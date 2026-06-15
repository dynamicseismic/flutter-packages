import AudioToolbox
import CoreHaptics
import Flutter
import UIKit

public class FlutterHapticsPlugin: NSObject, FlutterPlugin {
  private var hapticEngine: CHHapticEngine?
  private var currentPlayer: CHHapticPatternPlayer?
  private var pendingFallbackTasks: [DispatchWorkItem] = []

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_haptics", binaryMessenger: registrar.messenger())
    let instance = FlutterHapticsPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "isSupported":
      result(CHHapticEngine.capabilitiesForHardware().supportsHaptics)
    case "trigger":
      trigger(call: call, result: result)
    case "cancel":
      cancel()
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  private func trigger(call: FlutterMethodCall, result: @escaping FlutterResult) {
    guard
      let arguments = call.arguments as? [String: Any],
      let pattern = arguments["pattern"] as? [[String: Any]]
    else {
      result(FlutterError(code: "invalid_args", message: "Missing haptic pattern.", details: nil))
      return
    }

    let preset = arguments["preset"] as? String
    cancel()

    if let preset, playNativePreset(preset) {
      result(nil)
      return
    }

    if CHHapticEngine.capabilitiesForHardware().supportsHaptics {
      do {
        try playCoreHaptics(pattern: pattern)
        result(nil)
      } catch {
        result(
          FlutterError(
            code: "haptic_error",
            message: error.localizedDescription,
            details: nil
          )
        )
      }
      return
    }

    playFallbackVibration(pattern: pattern)
    result(nil)
  }

  private func playNativePreset(_ preset: String) -> Bool {
    switch preset {
    case "success":
      let generator = UINotificationFeedbackGenerator()
      generator.prepare()
      generator.notificationOccurred(.success)
      return true
    case "warning":
      let generator = UINotificationFeedbackGenerator()
      generator.prepare()
      generator.notificationOccurred(.warning)
      return true
    case "error":
      let generator = UINotificationFeedbackGenerator()
      generator.prepare()
      generator.notificationOccurred(.error)
      return true
    case "light":
      impact(.light)
      return true
    case "medium":
      impact(.medium)
      return true
    case "heavy":
      impact(.heavy)
      return true
    case "soft":
      impact(.soft)
      return true
    case "rigid":
      impact(.rigid)
      return true
    case "selection":
      let generator = UISelectionFeedbackGenerator()
      generator.prepare()
      generator.selectionChanged()
      return true
    default:
      return false
    }
  }

  private func impact(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
    let generator = UIImpactFeedbackGenerator(style: style)
    generator.prepare()
    generator.impactOccurred()
  }

  private func playCoreHaptics(pattern: [[String: Any]]) throws {
    let events = pattern.reduce(into: (events: [CHHapticEvent](), time: 0.0)) { state, vibration in
      let delay = seconds(vibration["delay"])
      let duration = seconds(vibration["duration"])
      let intensity = clampedDouble(vibration["intensity"], defaultValue: 0.5)

      state.time += delay
      guard duration > 0, intensity > 0 else {
        state.time += duration
        return
      }

      let intensityParameter = CHHapticEventParameter(
        parameterID: .hapticIntensity,
        value: Float(intensity)
      )
      let sharpnessParameter = CHHapticEventParameter(
        parameterID: .hapticSharpness,
        value: duration <= 0.05 ? 0.75 : 0.35
      )

      if duration <= 0.05 {
        state.events.append(
          CHHapticEvent(
            eventType: .hapticTransient,
            parameters: [intensityParameter, sharpnessParameter],
            relativeTime: state.time
          )
        )
      } else {
        state.events.append(
          CHHapticEvent(
            eventType: .hapticContinuous,
            parameters: [intensityParameter, sharpnessParameter],
            relativeTime: state.time,
            duration: duration
          )
        )
      }
      state.time += duration
    }.events

    guard !events.isEmpty else {
      return
    }

    let engine: CHHapticEngine
    if let existingEngine = hapticEngine {
      engine = existingEngine
    } else {
      engine = try CHHapticEngine()
      hapticEngine = engine
    }
    engine.stoppedHandler = { [weak self] _ in
      self?.currentPlayer = nil
    }
    engine.resetHandler = { [weak self] in
      self?.hapticEngine = nil
      self?.currentPlayer = nil
    }

    try engine.start()
    let hapticPattern = try CHHapticPattern(events: events, parameters: [])
    currentPlayer = try engine.makePlayer(with: hapticPattern)
    try currentPlayer?.start(atTime: CHHapticTimeImmediate)
  }

  private func playFallbackVibration(pattern: [[String: Any]]) {
    var offset = 0.0

    for vibration in pattern {
      offset += seconds(vibration["delay"])
      let duration = seconds(vibration["duration"])
      let intensity = clampedDouble(vibration["intensity"], defaultValue: 0.5)

      if duration > 0, intensity > 0 {
        let task = DispatchWorkItem {
          AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        }
        pendingFallbackTasks.append(task)
        DispatchQueue.main.asyncAfter(deadline: .now() + offset, execute: task)
      }

      offset += duration
    }
  }

  private func cancel() {
    try? currentPlayer?.stop(atTime: CHHapticTimeImmediate)
    currentPlayer = nil
    hapticEngine?.stop(completionHandler: nil)

    pendingFallbackTasks.forEach { $0.cancel() }
    pendingFallbackTasks.removeAll()
  }

  private func seconds(_ value: Any?) -> TimeInterval {
    return max(0, doubleValue(value) / 1000)
  }

  private func clampedDouble(_ value: Any?, defaultValue: Double) -> Double {
    return min(1, max(0, doubleValue(value, defaultValue: defaultValue)))
  }

  private func doubleValue(_ value: Any?, defaultValue: Double = 0) -> Double {
    switch value {
    case let number as NSNumber:
      return number.doubleValue
    case let number as Double:
      return number
    case let number as Float:
      return Double(number)
    case let number as Int:
      return Double(number)
    default:
      return defaultValue
    }
  }
}

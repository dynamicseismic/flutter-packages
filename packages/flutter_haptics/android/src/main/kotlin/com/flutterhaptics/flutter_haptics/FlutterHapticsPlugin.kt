package com.flutterhaptics.flutter_haptics

import android.content.Context
import android.os.Build
import android.os.VibrationEffect
import android.os.Vibrator
import android.os.VibratorManager
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import kotlin.math.roundToInt

class FlutterHapticsPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var channel: MethodChannel
    private lateinit var applicationContext: Context

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        applicationContext = flutterPluginBinding.applicationContext
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "flutter_haptics")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "isSupported" -> result.success(vibrator?.hasVibrator() == true)
            "trigger" -> trigger(call, result)
            "cancel" -> {
                vibrator?.cancel()
                result.success(null)
            }
            else -> result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    private val vibrator: Vibrator?
        get() {
            return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                val manager = applicationContext.getSystemService(
                    Context.VIBRATOR_MANAGER_SERVICE
                ) as VibratorManager
                manager.defaultVibrator
            } else {
                @Suppress("DEPRECATION")
                applicationContext.getSystemService(Context.VIBRATOR_SERVICE) as? Vibrator
            }
        }

    private fun trigger(call: MethodCall, result: Result) {
        val vibrator = vibrator
        if (vibrator?.hasVibrator() != true) {
            result.success(null)
            return
        }

        val pattern = call.argument<List<Map<String, Any>>>("pattern")
        if (pattern == null) {
            result.error("invalid_args", "Missing haptic pattern.", null)
            return
        }

        val segments = buildSegments(pattern)
        if (segments.isEmpty() || segments.all { it.amplitude == 0 }) {
            result.success(null)
            return
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val timings = segments.map { it.durationMs }.toLongArray()
            val amplitudes = segments.map { it.androidAmplitude(vibrator) }.toIntArray()
            vibrator.vibrate(VibrationEffect.createWaveform(timings, amplitudes, -1))
        } else {
            @Suppress("DEPRECATION")
            vibrator.vibrate(toLegacyPattern(segments), -1)
        }

        result.success(null)
    }

    private fun buildSegments(pattern: List<Map<String, Any>>): List<HapticSegment> {
        val segments = mutableListOf<HapticSegment>()

        for (vibration in pattern) {
            val delay = longValue(vibration["delay"])
            val duration = longValue(vibration["duration"])
            val intensity = doubleValue(vibration["intensity"]).coerceIn(0.0, 1.0)

            if (delay > 0) {
                appendSegment(segments, delay, 0)
            }

            if (duration <= 0) {
                continue
            }

            val amplitude = if (intensity <= 0.0) {
                0
            } else {
                (intensity * 255).roundToInt().coerceIn(1, 255)
            }
            appendSegment(segments, duration, amplitude)
        }

        return segments
    }

    private fun appendSegment(
        segments: MutableList<HapticSegment>,
        durationMs: Long,
        amplitude: Int
    ) {
        if (durationMs <= 0) {
            return
        }

        val last = segments.lastOrNull()
        if (last != null && last.amplitude == amplitude) {
            segments[segments.lastIndex] = last.copy(durationMs = last.durationMs + durationMs)
        } else {
            segments.add(HapticSegment(durationMs, amplitude))
        }
    }

    private fun toLegacyPattern(segments: List<HapticSegment>): LongArray {
        val pattern = mutableListOf<Long>()
        var expectingOffSegment = true

        for (segment in segments) {
            val isOffSegment = segment.amplitude == 0
            if (isOffSegment == expectingOffSegment) {
                pattern.add(segment.durationMs)
            } else {
                pattern.add(0)
                pattern.add(segment.durationMs)
            }
            expectingOffSegment = !isOffSegment
        }

        if (pattern.isEmpty()) {
            pattern.add(0)
        }

        return pattern.toLongArray()
    }

    private fun longValue(value: Any?): Long {
        return when (value) {
            is Int -> value.toLong()
            is Long -> value
            is Double -> value.toLong()
            is Float -> value.toLong()
            else -> 0L
        }.coerceAtLeast(0)
    }

    private fun doubleValue(value: Any?): Double {
        return when (value) {
            is Int -> value.toDouble()
            is Long -> value.toDouble()
            is Double -> value
            is Float -> value.toDouble()
            else -> 0.5
        }
    }
}

private data class HapticSegment(
    val durationMs: Long,
    val amplitude: Int
) {
    fun androidAmplitude(vibrator: Vibrator): Int {
        if (amplitude == 0) {
            return 0
        }
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && vibrator.hasAmplitudeControl()) {
            amplitude
        } else {
            VibrationEffect.DEFAULT_AMPLITUDE
        }
    }
}

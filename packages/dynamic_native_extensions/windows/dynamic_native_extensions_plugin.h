#ifndef FLUTTER_PLUGIN_SUPER_NATIVE_EXTENSIONS_PLUGIN_H_
#define FLUTTER_PLUGIN_SUPER_NATIVE_EXTENSIONS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace dynamic_native_extensions {

class DynamicNativeExtensionsPlugin : public flutter::Plugin {
public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DynamicNativeExtensionsPlugin();

  virtual ~DynamicNativeExtensionsPlugin();

  // Disallow copy and assign.
  DynamicNativeExtensionsPlugin(const DynamicNativeExtensionsPlugin &) = delete;
  DynamicNativeExtensionsPlugin &
  operator=(const DynamicNativeExtensionsPlugin &) = delete;

private:
};

} // namespace dynamic_native_extensions

#endif // FLUTTER_PLUGIN_SUPER_NATIVE_EXTENSIONS_PLUGIN_H_

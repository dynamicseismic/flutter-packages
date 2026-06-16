#include "include/dynamic_native_extensions/dynamic_native_extensions_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "dynamic_native_extensions_plugin.h"

void DynamicNativeExtensionsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  dynamic_native_extensions::DynamicNativeExtensionsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

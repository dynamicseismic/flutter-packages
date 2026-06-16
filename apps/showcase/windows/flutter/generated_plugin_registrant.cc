//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <dynamic_native_extensions/dynamic_native_extensions_plugin_c_api.h>
#include <irondash_engine_context/irondash_engine_context_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  DynamicNativeExtensionsPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DynamicNativeExtensionsPluginCApi"));
  IrondashEngineContextPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("IrondashEngineContextPluginCApi"));
}

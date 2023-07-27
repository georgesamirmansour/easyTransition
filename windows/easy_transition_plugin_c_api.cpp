#include "include/easy_transition/easy_transition_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "easy_transition_plugin.h"

void EasyTransitionPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  easy_transition::EasyTransitionPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

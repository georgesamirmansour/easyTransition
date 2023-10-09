#include "include/transition_easy/transition_easy_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "transition_easy_plugin.h"

void TransitionEasyPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  transition_easy::TransitionEasyPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

#ifndef FLUTTER_PLUGIN_TRANSITION_EASY_PLUGIN_H_
#define FLUTTER_PLUGIN_TRANSITION_EASY_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace transition_easy {

class TransitionEasyPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TransitionEasyPlugin();

  virtual ~TransitionEasyPlugin();

  // Disallow copy and assign.
  TransitionEasyPlugin(const TransitionEasyPlugin&) = delete;
  TransitionEasyPlugin& operator=(const TransitionEasyPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace transition_easy

#endif  // FLUTTER_PLUGIN_TRANSITION_EASY_PLUGIN_H_

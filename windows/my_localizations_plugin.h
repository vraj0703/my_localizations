#ifndef FLUTTER_PLUGIN_MY_LOCALIZATIONS_PLUGIN_H_
#define FLUTTER_PLUGIN_MY_LOCALIZATIONS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace my_localizations {

class MyLocalizationsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MyLocalizationsPlugin();

  virtual ~MyLocalizationsPlugin();

  // Disallow copy and assign.
  MyLocalizationsPlugin(const MyLocalizationsPlugin&) = delete;
  MyLocalizationsPlugin& operator=(const MyLocalizationsPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace my_localizations

#endif  // FLUTTER_PLUGIN_MY_LOCALIZATIONS_PLUGIN_H_

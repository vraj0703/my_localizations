import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'my_localizations_method_channel.dart';

abstract class MyLocalizationsPlatform extends PlatformInterface {
  /// Constructs a MyLocalizationsPlatform.
  MyLocalizationsPlatform() : super(token: _token);

  static final Object _token = Object();

  static MyLocalizationsPlatform _instance = MethodChannelMyLocalizations();

  /// The default instance of [MyLocalizationsPlatform] to use.
  ///
  /// Defaults to [MethodChannelMyLocalizations].
  static MyLocalizationsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MyLocalizationsPlatform] when
  /// they register themselves.
  static set instance(MyLocalizationsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

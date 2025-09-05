import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_localizations_platform_interface.dart';

/// An implementation of [MyLocalizationsPlatform] that uses method channels.
class MethodChannelMyLocalizations extends MyLocalizationsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_localizations');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

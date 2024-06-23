import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'multiple_attach_test_platform_interface.dart';

/// An implementation of [MultipleAttachTestPlatform] that uses method channels.
class MethodChannelMultipleAttachTest extends MultipleAttachTestPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('multiple_attach_test');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

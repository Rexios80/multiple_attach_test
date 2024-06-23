import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'multiple_attach_test_method_channel.dart';

abstract class MultipleAttachTestPlatform extends PlatformInterface {
  /// Constructs a MultipleAttachTestPlatform.
  MultipleAttachTestPlatform() : super(token: _token);

  static final Object _token = Object();

  static MultipleAttachTestPlatform _instance = MethodChannelMultipleAttachTest();

  /// The default instance of [MultipleAttachTestPlatform] to use.
  ///
  /// Defaults to [MethodChannelMultipleAttachTest].
  static MultipleAttachTestPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MultipleAttachTestPlatform] when
  /// they register themselves.
  static set instance(MultipleAttachTestPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

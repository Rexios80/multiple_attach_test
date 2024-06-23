import 'package:flutter_test/flutter_test.dart';
import 'package:multiple_attach_test/multiple_attach_test.dart';
import 'package:multiple_attach_test/multiple_attach_test_platform_interface.dart';
import 'package:multiple_attach_test/multiple_attach_test_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMultipleAttachTestPlatform
    with MockPlatformInterfaceMixin
    implements MultipleAttachTestPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MultipleAttachTestPlatform initialPlatform = MultipleAttachTestPlatform.instance;

  test('$MethodChannelMultipleAttachTest is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMultipleAttachTest>());
  });

  test('getPlatformVersion', () async {
    MultipleAttachTest multipleAttachTestPlugin = MultipleAttachTest();
    MockMultipleAttachTestPlatform fakePlatform = MockMultipleAttachTestPlatform();
    MultipleAttachTestPlatform.instance = fakePlatform;

    expect(await multipleAttachTestPlugin.getPlatformVersion(), '42');
  });
}

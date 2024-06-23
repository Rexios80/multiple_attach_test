import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:multiple_attach_test/multiple_attach_test_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelMultipleAttachTest platform = MethodChannelMultipleAttachTest();
  const MethodChannel channel = MethodChannel('multiple_attach_test');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

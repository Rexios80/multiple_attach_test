
import 'multiple_attach_test_platform_interface.dart';

class MultipleAttachTest {
  Future<String?> getPlatformVersion() {
    return MultipleAttachTestPlatform.instance.getPlatformVersion();
  }
}

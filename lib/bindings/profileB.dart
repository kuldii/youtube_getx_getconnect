import 'package:get/get.dart';

import '../controllers/profileC.dart';

class ProfileB implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileC());
  }
}

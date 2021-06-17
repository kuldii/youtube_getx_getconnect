import 'package:get/get.dart';

import '../controllers/addC.dart';

class AddUserB implements Bindings {
  @override
  void dependencies() {
    Get.put(AddC());
  }
}

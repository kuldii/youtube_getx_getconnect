import 'package:get/get.dart';

import '../controllers/usersC.dart';

class InitialB implements Bindings {
  @override
  void dependencies() {
    Get.put(UsersC(), permanent: true);
  }
}

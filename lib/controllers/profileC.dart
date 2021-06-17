import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileC extends GetxController {
  late TextEditingController nameC;
  late TextEditingController emailC;
  late TextEditingController phoneC;

  @override
  void onInit() {
    super.onInit();
    nameC = TextEditingController();
    emailC = TextEditingController();
    phoneC = TextEditingController();
  }

  @override
  void onClose() {
    nameC.dispose();
    emailC.dispose();
    phoneC.dispose();
    super.onClose();
  }
}

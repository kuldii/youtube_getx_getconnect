import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './routes/app_pages.dart';
import './pages/home_page.dart';

import './controllers/usersC.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final userC = Get.put(UsersC());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: AppPages.pages,
    );
  }
}

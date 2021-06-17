import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/user.dart';
import '../controllers/usersC.dart';
import '../controllers/profileC.dart';

class ProfilePage extends StatelessWidget {
  final profileC = Get.find<ProfileC>();
  final userC = Get.find<UsersC>();
  final String uid = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final User user = userC.userById(uid);
    profileC.nameC.text = user.name!;
    profileC.emailC.text = user.email!;
    profileC.phoneC.text = user.phone!;

    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE"),
        actions: [
          IconButton(
            onPressed: () => userC.delete(uid).then(
              (deleted) {
                if (deleted) Get.back();
              },
            ),
            icon: Icon(Icons.delete_forever),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              TextField(
                controller: profileC.nameC,
                autocorrect: false,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: profileC.emailC,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: profileC.phoneC,
                autocorrect: false,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onEditingComplete: () => userC.edit(
                  uid,
                  profileC.nameC.text,
                  profileC.emailC.text,
                  profileC.phoneC.text,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => userC.edit(
                  uid,
                  profileC.nameC.text,
                  profileC.emailC.text,
                  profileC.phoneC.text,
                ),
                child: Text("UPDATE"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

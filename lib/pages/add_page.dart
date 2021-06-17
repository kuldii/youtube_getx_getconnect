import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/addC.dart';
import '../controllers/usersC.dart';

class AddPage extends StatelessWidget {
  final addC = Get.find<AddC>();
  final usersC = Get.find<UsersC>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD USER"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              TextField(
                controller: addC.nameC,
                textInputAction: TextInputAction.next,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: addC.emailC,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "Email Address",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: addC.phoneC,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.done,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                ),
                onEditingComplete: () => usersC.add(
                  addC.nameC.text,
                  addC.emailC.text,
                  addC.phoneC.text,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => usersC.add(
                  addC.nameC.text,
                  addC.emailC.text,
                  addC.phoneC.text,
                ),
                child: Text("ADD USER"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

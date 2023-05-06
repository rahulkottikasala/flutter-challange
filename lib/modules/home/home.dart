import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/modules/profile/profile.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
    HomePage({super.key});

    static const routeName = '/home_page';

  List<Student> name = [
    Student(id: 1, name: "Rahul", age: "20"),
    Student(id: 2, name: "Sanal", age: "22"),
    Student(id: 3, name: "Gokul", age: "21"),
    Student(id: 4, name: "Ajith", age: "19"),
    Student(id: 5, name: "Akhil", age: "25"),
    Student(id: 6, name: "Jithin", age: "26"),
    Student(id: 7, name: "Amal", age: "20"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GETX"),
      ),
      body: Center(
        child: SizedBox(
          width: 100,
          height: 40,
          child: OutlinedButton(
            onPressed: () {
              Get.snackbar("Getx", "Please wait a seconds",
                  colorText: Colors.black,
                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal);
              Future.delayed(const Duration(seconds: 3), () {
                // Get.to(const Profile(),
                //     arguments:
                //      {"name": "Rahul", "age": 18, "place": "Tirur"}
                //      );

                //-------toName------
                
              });
                Get.toNamed('/profile_page');
            },
            child: const Text("Click"),
          ),
        ),
      ),
    );
  }
}

class Student {
  final int id;
  final String name;
  final String age;
  Student({
    required this.id,
    required this.name,
    required this.age,
  });
}

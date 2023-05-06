import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/modules/profile/profile.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  static var count = 0.obs;

  void increment() {
    count++;
  }

  void decrement() {
    if (count <= 0) {
      count.value = 0;
    } else {
      count--;
    }
  }

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
        actions: [
          SizedBox(
            width: 100,
            child: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
               const  Icon(Icons.notification_add_outlined, size: 32,),
               Positioned(
                top:7,right: 14,
                child: Container(
                  width: 25,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue
                  ),
                  child: Container(
                    width: 20, 
                    height: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                    child: Obx(() => Text('${HomePage.count}', style: const TextStyle(
                      fontSize: 10, 
                      color: Colors.blue,
                      fontWeight: FontWeight.w900
                    ),))),
                ))
              ]),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Count $count",
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 110,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: () {
                      decrement();
                    },
                    child: const Text("Decrement"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 110,
                  height: 40,
                  color: Colors.blue,
                  child: OutlinedButton(
                    onPressed: () {
                      increment();
                    },
                    child: const Text(
                      "Increment",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                //resetbutton

                 const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color:Color.fromARGB(255, 202, 0, 0), ),
                  child: TextButton(
                    onPressed: () {
                      count.value = 0;
                    },
                    child: const Icon(Icons.restart_alt, color: Colors.white,)
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 140,
              height: 40,
              child: OutlinedButton(
                onPressed: () {
                  Get.toNamed(Profile.routeName);
                },
                child: const Text("Profile Page"),
              ),
            ),
          ],
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

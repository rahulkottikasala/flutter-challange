import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/modules/dummy/dummy_page.dart';
import 'package:get_x/modules/home/home.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static const routeName = '/profile_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile 10X"),
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
                    child:  Obx(() => Text('${HomePage.count}', style: const TextStyle(
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
            SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(DummyPage.routeName);
                },
                child: const Text('Next'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Back'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

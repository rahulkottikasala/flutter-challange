import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static const routeName = '/profile_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body:  Center(
        child: Container(
          height: 40,
          width: 100,
          child: ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child:  const Text('Back'),
          ),
        ),
      ),
    );
  }
}


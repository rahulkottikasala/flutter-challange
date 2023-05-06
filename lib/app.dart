
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/modules/home/home.dart';
import 'package:get_x/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: HomePage.routeName,
      getPages: Routes.getPages,
    );
  }
}
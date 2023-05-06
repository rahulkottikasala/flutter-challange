import 'package:get/get.dart';
import 'package:get_x/modules/home/dummy/dummy_page.dart';
import 'package:get_x/modules/home/home.dart';
import 'package:get_x/modules/profile/profile.dart';

class Routes {
  static var getPages = [
    GetPage(name: HomePage.routeName, page: () => HomePage()),
    GetPage(name: Profile.routeName, page: () => const Profile()),
    GetPage(name: DummyPage.routeName, page: () => const DummyPage())
  ];
}

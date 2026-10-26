import 'package:flutter/material.dart';
import 'package:fluttertes/controllers/mainmenu_controller.dart';
import 'package:fluttertes/menu/history_page.dart';
import 'package:fluttertes/menu/home_page.dart';
import 'package:get/get.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: controller.changePage,
          currentIndex: controller.selectedIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
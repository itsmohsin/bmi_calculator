import 'package:bmi_calculator/Controller/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                themeController.changeTheme();
              },
              child: Text("Change Theme"),
            ),
          ],
        ),
      ),
    );
  }
}

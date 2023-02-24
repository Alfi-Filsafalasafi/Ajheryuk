import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: Get.width * 0.6,
            width: Get.width * 0.6,
            child: Image.asset(
              "assets/logo/ajheryuk.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Welcome to Ajheryuk",
            style: TextStyle(
              color: Color(0xFF303030),
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Best and popular apps for live education course from home",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF8C8C8C),
              fontSize: 16,
            ),
          ),
          SizedBox(height: 60),
          Container(
            width: Get.width,
            child: ElevatedButton(
              onPressed: () => Get.toNamed(Routes.LOGIN),
              child: Text("Get Started"),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFFEC5F5F),
                  padding: EdgeInsets.symmetric(vertical: 18)),
            ),
          ),
        ],
      ),
    ));
  }
}

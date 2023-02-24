import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Container(
              width: 140,
              height: 140,
              child: Image.asset("assets/logo/ajheryuk2x.png"),
            ),
            TextField(
              cursorColor: Color(0xFF9D9FA0),
              decoration: InputDecoration(
                fillColor: Color(0xFFF6F7FA),
                filled: true,
                border: InputBorder.none,
                label: Text(
                  "Email",
                  style: TextStyle(color: Color(0xFf9D9FA0)),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              cursorColor: Color(0xFF9D9FA0),
              decoration: InputDecoration(
                  fillColor: Color(0xFFF6F7FA),
                  filled: true,
                  border: InputBorder.none,
                  label: Text(
                    "Password",
                    style: TextStyle(color: Color(0xFf9D9FA0)),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/icons/password-hide.png"),
                  )),
            ),
            SizedBox(height: 24),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEC5F5F),
                    padding: EdgeInsets.symmetric(vertical: 18)),
              ),
            ),
            SizedBox(height: 24),
            TextButton(
              onPressed: () {},
              child: Text("Forgot Password ?"),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 1,
                    color: Color(0xFFC7C9D9),
                  ),
                ),
                Text(
                  "Or",
                  style: TextStyle(
                      color: Color(0xFFC7C9D9), fontWeight: FontWeight.w600),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 1,
                    color: Color(0xFFC7C9D9),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/facebook.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Log in with Facebook",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0082CD),
                    padding: EdgeInsets.symmetric(vertical: 18)),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/google.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Log in with Google",
                      style: TextStyle(fontSize: 16, color: Color(0xFF303030)),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF6F7FA),
                    padding: EdgeInsets.symmetric(vertical: 18)),
              ),
            ),
            SizedBox(height: 76),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account"),
                TextButton(onPressed: () {}, child: Text("Sign Up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

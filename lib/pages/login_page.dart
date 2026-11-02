import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertes/controllers/login_controller.dart';
import 'package:fluttertes/components/custom_textfield.dart';
import 'package:fluttertes/components/custom_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("login api")),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomTextfield(
                myHint: "input username",
                txtController: controller.txtUsername,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomTextfield(
                myHint: "input password",
                txtController: controller.txtPassword,
                obscureText: true,
              ),
            ),
            Obx(
              () => controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : CustomButton(
                      myText: "login",
                      onPressed: () {
                        controller.login();
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
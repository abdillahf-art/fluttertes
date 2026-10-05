import 'package:fluttertes/components/custom_button.dart';
import 'package:fluttertes/components/custom_text.dart';
import 'package:fluttertes/controllers/confirm_registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          myText: "Confirm Page",
          fontSize: 22,
          myColor: Colors.white,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomText(myText: "Data Pendaftaran", fontSize: 26),
                const SizedBox(height: 24),
                CustomText(myText: "Username: ${controller.username}", fontSize: 18),
                const SizedBox(height: 8),
                CustomText(myText: "Nama lengkap: ${controller.nama_lengkap}", fontSize: 18),
                const SizedBox(height: 8),
                CustomText(myText: "Email: ${controller.email}", fontSize: 18),
                const SizedBox(height: 8),
                CustomText(myText: "No WA: ${controller.no_wa}", fontSize: 18),
                const SizedBox(height: 8),
                CustomText(myText: "Jenis kelamin: ${controller.jenis_kelamin}", fontSize: 18),
                const SizedBox(height: 24),
                CustomButton(
                  myText: "ok",
                  onPressed: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:fluttertes/components/custom_button.dart';
import 'package:fluttertes/components/custom_text.dart';
import 'package:fluttertes/components/custom_textfield.dart';
import 'package:fluttertes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtUsername = TextEditingController();
    TextEditingController txtNamaLengkap = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();
    final RxString jenisKelamin = "".obs;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          myText: "Registration",
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
              children: [
                const CustomText(myText: "Buat Akun", fontSize: 26),
                const SizedBox(height: 4),
                const Text(
                  "Isi data diri kamu dengan benar",
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(height: 24),
                CustomTextfield(
                  myHint: "input username",
                  txtController: txtUsername,
                ),
                const SizedBox(height: 14),
                CustomTextfield(
                  myHint: "input nama lengkap",
                  txtController: txtNamaLengkap,
                ),
                const SizedBox(height: 14),
                CustomTextfield(
                  myHint: "input email",
                  txtController: txtEmail,
                ),
                const SizedBox(height: 14),
                CustomTextfield(
                  myHint: "input no WA",
                  txtController: txtNoWa,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                const SizedBox(height: 14),
                Obx(
                  () => DropdownButtonFormField<String>(
                    isExpanded: true,
                    decoration: const InputDecoration(
                      hintText: "Pilih jenis kelamin",
                    ),
                    value: jenisKelamin.value.isEmpty
                        ? null
                        : jenisKelamin.value,
                    items: ["Laki-laki", "Perempuan"]
                        .map(
                          (g) => DropdownMenuItem(value: g, child: Text(g)),
                        )
                        .toList(),
                    onChanged: (v) => jenisKelamin.value = v!,
                  ),
                ),
                const SizedBox(height: 24),
                CustomButton(
                  myText: "Send",
                  onPressed: () {
                    Get.toNamed(
                      Routes.confirm_registraion,
                      arguments: {
                        "username": txtUsername.text,
                        "nama_lengkap": txtNamaLengkap.text,
                        "email": txtEmail.text,
                        "no_wa": txtNoWa.text,
                        "jenis_kelamin": jenisKelamin.value,
                      },
                    );
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
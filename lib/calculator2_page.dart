import 'package:fluttertes/components/custom_textfield.dart';
import 'package:fluttertes/controllers/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:fluttertes/components/custom_button.dart';
import 'package:fluttertes/components/custom_text.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(KalkulatorController());
    // menyambingkan page dan controller

  final TextEditingController txtangka1 = TextEditingController();
  final TextEditingController txtangka2 = TextEditingController();

  double get angka1 => double.parse(txtangka1.text);
  double get angka2 => double.parse(txtangka2.text);
  
  bool get inputValid => controller.cekInput(txtangka1.text, txtangka2.text);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("my kalkulator")),
      body: Column(
        children: [
          CustomTextfield(myHint: "input angka 1", 
          txtController: txtangka1,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
          
          CustomTextfield (myHint: "input angka 2",
          txtController: txtangka2,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                myText: "+",
                myColor: Colors.blue,
                onPressed: () {
                  if (inputValid) controller.tambah(angka1, angka2);
                },
              ),
              const SizedBox(width: 10),
              CustomButton(
                myText: "-",
                myColor: Colors.red,
                onPressed: () {
                  if (inputValid) controller.kurang(angka1, angka2);
                },
              ),
              const SizedBox(width: 10),
              CustomButton(
                myText: "X",
                myColor: Colors.green,
                onPressed: () {
                  if (inputValid) controller.kali(angka1, angka2);
                },
              ),
              const SizedBox(width: 10),
              CustomButton(
                myText: "/",
                myColor: Colors.purple,
                onPressed: () {
                  if (inputValid) controller.bagi(angka1, angka2);
                },
              ),
            ],
          ),
          const SizedBox(height: 30),
          Obx(
            () => CustomText(
              myText: "Hasil : ${controller.hasilHitung.value}",
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
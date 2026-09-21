import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertes/components/custom_textfield.dart';
import 'package:fluttertes/components/custom_text.dart';
import 'package:fluttertes/components/custom_button.dart';

class KalkulatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {

  TextEditingController txtAngka1 = TextEditingController();
  TextEditingController txtAngka2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("my kalkulator page")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child:  CustomTextfield(
              myHint: "Masukkan Angka 1",
              txtController: txtAngka1,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: CustomTextfield(
              myHint: "Masukkan Angka 2",
              txtController: txtAngka2,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                myText: "➕",
                myColor: Colors.blue,
                onPressed: () {},
              ),
              SizedBox(width: 10),
              CustomButton(
                myText: "➖",
                myColor: Colors.red,
                onPressed: () {},
              ),
              SizedBox(width: 10),
              CustomButton(
                myText: "❎",
                myColor: Colors.green,
                onPressed: () {},
              ),
              SizedBox(width: 10),
              CustomButton(
                myText: "➗",
                myColor: Colors.purple,
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 30),
          CustomText(myText: "Hasil : ", fontSize: 24),
          SizedBox(height: 20),
          CustomButton(
            myText: "RESET",
            myColor: Colors.red,
            myTextColor: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:fluttertes/components/custom_textfield.dart';
import 'package:fluttertes/components/custom_text.dart';
import 'package:fluttertes/components/custom_button.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Login Page")),
      body: Column(
        children: [
            CustomText(myText: "Welcome to my application" + statusLogin),
          Container(
            margin: EdgeInsets.all(20),
             width: 300,        
            child: CustomTextfield(
              myHint: "input username",
              txtController: txtUsername,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
             width: 300,        
            child: CustomTextfield(
              myHint: "input password",
              txtController: txtPassword,
              obscureText: true,
            ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                myText: "Login",
                onPressed: () {
                   setState(() {
                // fungsinya untuk reload / refresh satu page full
                String username = txtUsername.text.toString();
                String password = txtPassword.text.toString();
                if (username == "admin" && password == "admin") {
                  statusLogin = "admin";
                  print("sukses login");
                } else {
                  statusLogin = "failed";
                  print("gagal login");
                }
              });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
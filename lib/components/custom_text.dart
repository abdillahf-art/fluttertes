import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  final String myText;
  final double fontSize;
  final Color myColor;

  const CustomText({super.key, required this.myText,this.fontSize = 30,this.myColor = const Color.fromARGB(255, 46, 9, 182)});

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      style: TextStyle(
        fontSize: fontSize,
        color: myColor,
      ),
    );
  }
}
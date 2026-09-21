  import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String myText;
  final VoidCallback onPressed;
  final Color myColor;
  final Color myTextColor;

  const CustomButton({super.key, required this.myText, required this.onPressed,this.myColor = Colors.white,  this.myTextColor = Colors.lightBlueAccent});

  @override
  Widget build(BuildContext context) {  
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(myColor),
      ),
      onPressed: onPressed,
      child: Text(
        myText,
        style: TextStyle(
          color: myTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
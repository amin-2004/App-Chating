
import 'package:flutter/material.dart';

class Button {
  // ignore: unused_field
  Function()? onTap;
  // ignore: unused_field
  String? text;

  Widget buttonSignBorder(
      {required String text,
      required Function() onTap,
      required var  border, 
      TextStyle? textStyle,
   }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
        
            borderRadius: BorderRadius.circular(30),
            border: border),
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }

  Widget buttonSignFill(
      {required String text,
      required Function() onTap,
      Color? color ,
      LinearGradient? gradient,
      TextStyle? textStyle,
      }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          gradient: gradient,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
          text,
          style: textStyle,
        )),
      ),
    );
  }
}

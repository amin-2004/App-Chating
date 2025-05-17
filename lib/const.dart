import 'package:flutter/material.dart';
const color01 = Color(0xFF7C01F6);

class Const {
  Widget background = Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0x77121111), Color(0x777C01F6)])),
  );
}

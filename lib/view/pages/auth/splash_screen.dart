import 'package:flutter/material.dart';
import 'package:flutter_application_task1/const.dart';
import 'package:flutter_application_task1/view/pages/auth/slepe_sign.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
        Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(
          () =>  SlepeSign(), 
          fullscreenDialog: true,
          transition: Transition.native,
          duration:  Duration(seconds: 3));
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Const().background,
          Center(
            child: SizedBox(
              width: 150,
              height:150 ,
              child: Image.asset('assets/images/logo.png')),
          )
        ],
      ),
    );
  }
}

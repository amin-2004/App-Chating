import 'package:flutter/material.dart';
import 'package:flutter_application_task1/view/pages/auth/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}

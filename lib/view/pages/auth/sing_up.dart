import 'package:flutter/material.dart';
import 'package:flutter_application_task1/controller/home_controller.dart';
import 'package:flutter_application_task1/view/pages/auth/sign_in.dart';
import 'package:flutter_application_task1/view/pages/auth/slepe_sign.dart';
import 'package:flutter_application_task1/view/pages/home/home.dart';
import 'package:flutter_application_task1/view/widgets/button.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          // backgroundColor
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF121111), Color(0xFF7C01F6)])),
          ),

          Padding(
            padding: EdgeInsets.only(top: 60, left: 40, right: 40),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Create Your\nAccount",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {
                        Get.offAll(SlepeSign());
                      },
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(top: 210),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 50),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            label: Text(
                              'Full Name',
                              style: TextStyle(
                                color: Color.fromARGB(255, 58, 1, 114),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            suffixIcon: Icon(
                              Icons.check,
                              color: Colors.green,
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            label: Text(
                              'Gmail',
                              style: TextStyle(
                                color: Color.fromARGB(255, 58, 1, 114),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            suffixIcon: Icon(
                              Icons.check,
                              color: Colors.green,
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Obx(
                        () => TextField(
                          obscureText: homeController.isHide.value,
                          decoration: InputDecoration(
                              label: Text(
                                'Passored',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 58, 1, 114),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    homeController.togglePassoredController();
                                  },
                                  icon: Icon(
                                    homeController.isHide.value == true
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Obx(
                        () => TextField(
                          obscureText: homeController.isHide.value,
                          decoration: InputDecoration(
                              label: Text(
                                ' Passored',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 58, 1, 114),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    homeController.togglePassoredController();
                                  },
                                  icon: Icon(
                                    homeController.isHide.value == true
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Button().buttonSignFill(
                          onTap: () {
                            Get.offAll(HomeMessages());
                          },
                          text: 'Sign Up',
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          gradient: LinearGradient(
                              colors: [Color(0xFF121111), Color(0xFF7C01F6)])),
                      SizedBox(
                        height: 70,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Not Acaont'),
                            TextButton(
                              onPressed: () {
                                Get.off(SignIn());
                              },
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Color(0xFF121111),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

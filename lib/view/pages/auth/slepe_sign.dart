import 'package:flutter/material.dart';
import 'package:flutter_application_task1/const.dart';
import 'package:flutter_application_task1/view/pages/auth/sign_in.dart';
import 'package:flutter_application_task1/view/pages/auth/sing_up.dart';
import 'package:flutter_application_task1/view/widgets/button.dart';
import 'package:get/get.dart';

class SlepeSign extends StatelessWidget {
  const SlepeSign({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Const().background,
          Padding(
            padding: EdgeInsets.only(top: 90, left: 40, right: 40),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Center(
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 60, bottom: 35),
                          child: SizedBox(
                              width: 135,
                              child: Image.asset('assets/images/logo.png'))),
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Button().buttonSignBorder(
                          text: 'SIGN IN',
                          onTap: () {
                            Get.to(() => SignIn());
                          },
                          border: Border.all(color: Colors.white, width: 2),
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17)),
                      SizedBox(
                        height: 25,
                      ),
                      Button().buttonSignFill(
                        text: 'SIGN UP',
                        onTap: () {
                          Get.to(() => SignUp());
                        },
                        color: Colors.white,
                        textStyle: TextStyle(color: const Color.fromARGB(255, 75, 5, 144),fontSize: 17,fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Expanded(child: SizedBox()),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          Text(
                            'Login With Social Media',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                ),
                                iconSize: 35,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.telegram,
                                  color: Colors.white,
                                ),
                                iconSize: 35,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                ),
                                iconSize: 35,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_task1/const.dart';
import 'package:flutter_application_task1/model/home_model.dart';

class HomeMessages extends StatelessWidget {
  const HomeMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // backgroundColor
            Const().background,
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 20,
                // right: 30,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Messages",
                          style: TextStyle(
                              color: Color(0xFFC8C8C8),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(child: SizedBox()),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/icons/Filter.png'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child:InkWell(
                            onTap: (){},
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                              ),
                              child: Row(
                                children: [

                                ],
                              ),
                            ),
                          )
                          // TextField(
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //   ),
                          //   decoration: InputDecoration(
                          //       hintText: 'Search...',
                          //       hintStyle: TextStyle(
                          //           fontWeight: FontWeight.bold,
                          //           color: Colors.grey),
                          //       suffixIcon:
                          //           Image.asset('assets/icons/Search.png'),
                          //       filled: true,
                          //       fillColor: Color(0x77504F50),
                          //       border: OutlineInputBorder(
                          //           borderRadius: BorderRadius.circular(20),
                          //           borderSide: BorderSide.none)),
                          // ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 30,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(colors: [
                                Color(0x777C01F6),
                                Color(0x77B66DFF)
                              ]),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Currently Active',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Container(
                                      width: 8,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                        border: Border.all(
                                          color: Color(0x99C093ED),
                                          width: 1.09,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: SizedBox())
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 140,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.only(right: 20),
                            children: [
                              HomeModel().currentlyActive(
                                  name: 'Olivia',
                                  imageAsset: 'assets/images/user01.png',
                                  backgroundColor: Color(0xFFE8DA5A)),
                              HomeModel().currentlyActive(
                                  name: 'James',
                                  imageAsset: 'assets/images/user02.png',
                                  backgroundColor: Color(0xFF009BE4)),
                              HomeModel().currentlyActive(
                                  name: 'Sophia ',
                                  imageAsset: 'assets/images/user03.png',
                                  backgroundColor: Color(0xFF00DDC5)),
                              HomeModel().currentlyActive(
                                  name: 'Daniel ',
                                  imageAsset: 'assets/images/user04.png',
                                  backgroundColor: Color(0xFF009BE4)),
                              HomeModel().currentlyActive(
                                  name: 'Daniel ',
                                  imageAsset: 'assets/images/user05.png',
                                  backgroundColor: Color(0xFFEE3A3D)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(colors: [
                                Color(0x777C01F6),
                                Color(0x77B66DFF)
                              ]),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Recents',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Stack(
                                  children: [
                                    Icon(
                                      Icons.history_toggle_off_rounded,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: SizedBox())
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: ListView(

                              ///---------------
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),

                              ///---------------
                              children: [
                                HomeModel().recentMessages(
                                    name: 'Olivia',
                                    backgroundColor: Color(0xFFE8DA5A),
                                    imageAsset: 'assets/images/user01.png',
                                    messages: 'Hello Amin ....??',
                                    time: 1,
                                    count: 4),
                                HomeModel().recentMessages(
                                    name: 'James',
                                    backgroundColor: Color(0xFF009BE4),
                                    imageAsset: 'assets/images/user02.png',
                                    messages: 'Hello ....??',
                                    time: 2,
                                    count: 1),
                                HomeModel().recentMessages(
                                    name: 'Sophia',
                                    backgroundColor: Color(0xFF00DDC5),
                                    imageAsset: 'assets/images/user03.png',
                                    messages: 'Hi Amin , godmorng',
                                    time: 15,
                                    count: 3),
                                HomeModel().recentMessages(
                                    name: 'Daniel',
                                    backgroundColor: Color(0xFF009BE4),
                                    imageAsset: 'assets/images/user04.png',
                                    messages: 'Hello ..',
                                    time: 20,
                                    count: 6),
                                HomeModel().recentMessages(
                                    name: 'James',
                                    backgroundColor: Color(0xFF009BE4),
                                    imageAsset: 'assets/images/user02.png',
                                    messages: 'Hello ....??',
                                    time: 2,
                                    count: 1),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

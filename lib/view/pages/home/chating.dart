import 'package:flutter/material.dart';
import 'package:flutter_application_task1/const.dart';
import 'package:flutter_application_task1/controller/chat_controller.dart';
import 'package:get/get.dart';

class Chating extends StatelessWidget {
  Chating({super.key});
  final controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        // backgroundColor
        Const().background,
        Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(
                  top: 15,
                  right: 15,
                  left: 10,
                ),
                height: 120,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0x441F1F1F), Color(0xff1F1F1F)]),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 7,
                          color: Colors.black26)
                    ]),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey,
                          size: 30,
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 170,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/user01.png')),
                            ),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 60,
                            child: Column(
                              children: [
                                Text(
                                  'Olivia',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.green,
                                      radius: 3,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'Active',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 13),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/icons/call.png'),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/icons/Camera.png'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    final message =
                        controller.messages[index]; //يقوم بعمل ريسبونس للمسج
                    return Padding(
                      padding: const EdgeInsets.only(
                          right: 30, left: 30, top: 20, bottom: 20),
                      child: Column(
                        spacing: 30,
                        children: [
                          // Text(
                          //  controller.formatDate(message.timestamp),
                          //   style: TextStyle(color: Colors.grey, fontSize: 18),
                          //   textAlign: TextAlign.center,
                          // ),
                          message.isSentByUser
                              ? Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 120),
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        color: color01,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10,
                                            right: 17,
                                            left: 17,
                                            bottom: 10),
                                        child: Text(
                                          message.content,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                          overflow: TextOverflow.visible,
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 10,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/user01.png')),
                                        ),
                                      ),
                                      Container(
                                        width: 227,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF4D4C4E),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10,
                                              right: 17,
                                              left: 17,
                                              bottom: 10),
                                          child: Text(
                                            message.content,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500),
                                            overflow: TextOverflow.visible,
                                            // textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                        ],
                      ),
                    );

                    // ignore: dead_code
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  padding: EdgeInsets.all(15),
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color(0xff1F1F1F),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/attach-sharp.png'),
                      ),
                      Expanded(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 200, // الحد الأقصى للارتفاع
                          ),
                          //تحديد ارتفاع الحقل
                          child: SingleChildScrollView(
                            child: TextField(
                              controller: controller.messageController,
                              maxLines: null, // للسماح بإدخال نص متعدد الأسطر
                              keyboardType: TextInputType
                                  .multiline, // للسماح بإدخال نص متعدد الأسطر
                              decoration: InputDecoration(
                                hintText: 'Type Your Massege',
                                hintStyle: TextStyle(
                                    color: Color(0xFF4D4C4E),
                                    fontWeight: FontWeight.bold),
                                filled: true,
                                fillColor: Color(0xff272626),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.white,
                              ), //تغيير لون النص المدخل
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            controller
                                .sendMessage(controller.messageController.text);
                          },
                          icon: Image.asset('assets/icons/Send.png')),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

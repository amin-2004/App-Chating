import 'package:flutter/material.dart';
import 'package:flutter_application_task1/model/chating_model.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  // Define your chat-related properties and methods here
  var messages = <Message>[].obs;
  TextEditingController messageController = TextEditingController();

  // دالة لإرسال الرسالة

  void sendMessage(String message) {
    final text = messageController.text.trim();
    if (text.isNotEmpty) {
      messages.add(Message(
          content: text, isSentByUser: true, timestamp: DateTime.now()));
      // هنا يمكنك إضافة الكود لإرسال الرسالة إلى الخادم أو أي عملية أخرى);
      messageController.clear();
    }
  }
    // دالة لإضافة الرسالة المستلمة
  void receiveMessage(String message) {
    messages.add(Message(
      content: message,
      isSentByUser: false, // الرسالة مستلمة
      timestamp: DateTime.now(),
    ));
  }
    // دالة لفحص إذا كانت الرسالة مكررة
  bool isDuplicateMessage(String message) {
    for (var msg in messages) {
      if (msg.content == message) {
        return true; // الرسالة مكررة
      }
    }
    return false; // الرسالة ليست مكررة
  }

  //دالة لتنسيق التاريخ
    String formatDate(DateTime timestamp) {
    return "${timestamp.day}/${timestamp.month} , ${timestamp.hour}:${timestamp.minute}";
  }


}

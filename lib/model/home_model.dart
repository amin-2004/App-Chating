import 'package:flutter/material.dart';
import 'package:flutter_application_task1/view/pages/home/chating.dart';
import 'package:get/get.dart';

class HomeModel {
  Widget currentlyActive({
    required String name,
    required String imageAsset,
    required Color backgroundColor,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
      ),
      child: Column(
        children: [
          Container(
            width: 84,
            height: 107,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34),
              color: backgroundColor,
              image: DecorationImage(image: AssetImage(imageAsset)),
              
            ),
 
          ),
          SizedBox(
            height: 5,
          ),
          Text(name,
              style: TextStyle(
                color: Color(0xFFC8C8C8),
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }

  Widget recentMessages(
      {required String name,
      required Color backgroundColor,
      required String imageAsset,
      required String messages,
      required int time,
      required int count}) {
    return GestureDetector(
      onTap: ()=> Get.to(Chating()),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(2),
        width: double.infinity,
        height: 88,
        decoration: BoxDecoration(
            color: Color(0x991F1F1F),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: Colors.white24,
            )),
        child: Center(
          child: ListTile(
            leading:Container(
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColor,
                image: DecorationImage(image: AssetImage(imageAsset))
              
              ),
            ),
            //  CircleAvatar(
            //   radius: 40,
            //   backgroundColor: backgroundColor,
              
            //   child: Image.asset(
            //     imageAsset,
                
            //   ),
            // ),
            title: Text(
              name,
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              messages,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              children: [
                Text(
                  '$time Min',
                  style: TextStyle(
                    color: Color(0xFF7C01F6),
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xFF7C01F6),
                  child: Center(
                      child: Text(
                    '$count',
                    style: TextStyle(color: Colors.white70, fontSize: 13),
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

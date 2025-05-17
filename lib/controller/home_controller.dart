import 'package:get/get.dart';

class HomeController extends GetxController {
  
  RxBool isHide = true.obs ;
  

  void togglePassoredController (){
    isHide.toggle();
  }
}
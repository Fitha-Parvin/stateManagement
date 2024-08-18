import 'package:get/get.dart';

class CountControll extends GetxController{
  var count=0.obs;

  void increment(){
    count++;
  }

  void decrement(){
    if(count>=1)
    count--;
  }
}
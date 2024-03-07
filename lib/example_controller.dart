import 'package:get/get.dart';

class ExampleController extends GetxController{
  RxBool notification=false.obs;

  setNotification(bool value){
    notification.value=value;
  }
}
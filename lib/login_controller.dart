import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;

  void loginApi() async {
    loading.value = true;
    try {
      final response = await post(Uri.parse("https://reqres.in/api/login"),
          body: {
            'email': emailController.value.text,
            'password': passwordController.value.text
          });
      var data = jsonDecode(response.body);
      // print(data);
      // print(response.statusCode);
      if (response.statusCode == 200) {
        Get.snackbar('login Sucessfull', 'congo',                          
            icon: const Icon(Icons.abc_sharp));
        loading.value = false;
      } else {
        Get.snackbar('Login failed', data['error'],
            icon: const Icon(Icons.graphic_eq));  
        loading.value = false;
      }
    } catch (e) {
      loading.value = false;

      Get.snackbar('exception', e.toString());
    }  
    
  }
}

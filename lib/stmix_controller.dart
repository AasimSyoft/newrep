import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/model/users.dart';

class StMixController extends GetxController with StateMixin<List<User>> {
  @override
  void onInit() {
    fetchComments();
    super.onInit();
  }

  Future<void> fetchComments() async {
    try {
      
      var response = await http.get(Uri.parse('https://dummyjson.com/users'));

      if (response.statusCode == 200) {
        var userModel = UserModel.fromJson(jsonDecode(response.body));
        if (userModel.users!.isNotEmpty) {
          change(userModel.users!, status: RxStatus.success());
        } else {
          change([], status: RxStatus.empty());
        }
      }
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
      rethrow;
    }
  }
}

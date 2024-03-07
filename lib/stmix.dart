import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/model/users.dart';
import 'package:test_app/stmix_controller.dart';

class GetMix extends GetView<StMixController> {
  const GetMix({super.key});

  @override
  StMixController get controller => Get.put(StMixController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: controller.obx(
        (state) => ListView.builder(
            itemCount: state?.length,
            itemBuilder: (context, index) {
              User user = state![index];
              return ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(user.image ?? ''),
                ),
                title: Text(user.firstName ?? ''),
                subtitle: Text(user.lastName ?? ''),
                trailing: Text(user.birthDate.toString()),
              );
            }),
        onLoading: const CircularProgressIndicator.adaptive(),
        onEmpty: const Text("All Caught up"),
        onError: (error) => Text(error ?? 'Error'),
      ),
    ));
  }
}

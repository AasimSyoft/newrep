import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/fav_controller.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  FavoriteController favcontroller = Get.put(FavoriteController());
  // List<String> fruitList=['orange','Apple','Mango','Banana'];
  // List<String> tempFruitList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: favcontroller.fruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  onTap: () {
                    if (favcontroller.tempFruitList
                        .contains(favcontroller.fruitList[index].toString())) {
                      favcontroller.removeFromFavorite(
                          favcontroller.fruitList[index].toString());
                    } else {
                      favcontroller.addToFavorite(
                          favcontroller.fruitList[index].toString());
                    }
                  },
                  title: Text(
                    favcontroller.fruitList[index].toString(),
                  ),
                  trailing: Obx(() {
                    return Icon(
                      Icons.favorite,
                      color: favcontroller.tempFruitList.contains(
                              favcontroller.fruitList[index].toString())
                          ? Colors.red
                          : Colors.black,
                    );
                  })),
            );
          }),
    );
  }
}

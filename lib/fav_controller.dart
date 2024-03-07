import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<String> fruitList = ['orange', 'Apple', 'Mango', 'Banana'].obs;
  RxList tempFruitList = [].obs;

  addToFavorite(String value) {
    tempFruitList.add(value);
    Get.snackbar("Woah", "Item added to favorite");
  }

  removeFromFavorite(String value) {
    tempFruitList.remove(value);
    Get.snackbar("hey", "Item remove from fav");
  }
}

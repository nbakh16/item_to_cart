import 'package:get/get.dart';

class ItemController extends GetxController {
  var item1 = 0.obs;
  var item2 = 0.obs;
  var totalItems = 0.obs;

  void addItem(var item) {
    item.value++;
  }
  void removeItem(var item) {
    if(item.value<=0) return;
    item.value--;
  }

  void calculateItems() {
    totalItems.value = item1.value + item2.value;
  }
}

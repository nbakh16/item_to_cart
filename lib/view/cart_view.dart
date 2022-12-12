import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/item_controller.dart';

class CartView extends StatelessWidget {
  CartView({Key? key}) : super(key: key);

  final ItemController itemController = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Total Items: ${itemController.totalItems}")
          ],
        ),
      ),
    );
  }
}

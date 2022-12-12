import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/item_controller.dart';
import 'cart_view.dart';

class ItemsView extends StatelessWidget {
  ItemsView({Key? key}) : super(key: key);

  final ItemController itemController = Get.put(ItemController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Items"),),
      body: Container(
        padding: EdgeInsets.all(22),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Text("Item 1", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.deepPurple
                  ),
                  child: IconButton(
                    icon: Icon(Icons.remove, color: Colors.white,),
                    onPressed: (){
                      itemController.removeItem(itemController.item1);
                    },
                  ),
                ),
                SizedBox(width: 12,),
                Obx(()=>
                    Text("${itemController.item1.value}",
                    style: TextStyle(fontSize: 18),)
                ),
                SizedBox(width: 12,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.deepPurple
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white,),
                    onPressed: (){
                      itemController.addItem(itemController.item1);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            Row(
              children: [
                Text("Item 2", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.deepPurple
                  ),
                  child: IconButton(
                    icon: Icon(Icons.remove, color: Colors.white,),
                    onPressed: (){
                      itemController.removeItem(itemController.item2);
                    },
                  ),
                ),
                SizedBox(width: 12,),
                Obx(()=>
                    Text("${itemController.item2.value}",
                      style: TextStyle(fontSize: 18),)
                ),
                SizedBox(width: 12,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.deepPurple
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white,),
                    onPressed: (){
                      itemController.addItem(itemController.item2);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 22,),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  itemController.calculateItems();
                  Get.to(()=>CartView());
                },
                child: Text("Confirm"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}

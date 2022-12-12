import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);


  final controller = Get.put(Controller());


  @override
  Widget build(BuildContext context) {
    controller.getAccountInfoList();
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: ListView.builder(
         itemCount: controller.accountInfoList.length,
         itemBuilder: (context, index) {
           return Card(
             elevation: 8,
             color: Colors.white,
             shape: Border.all(width: 1, color: Colors.deepOrange),
             child: Padding(
               padding: EdgeInsets.all(22),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Log Type: ${controller.accountInfoList[index].logType?.typeName.toString()}",
                     style: const TextStyle(fontSize: 18),),
                   Text("Description: ${controller.accountInfoList[index].description.toString()}",
                     style: const TextStyle(fontSize: 18),),
                 ],
               )
             ),
           );
         })
    );

  }
}

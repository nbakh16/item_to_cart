import 'dart:io';

import 'package:get/get.dart';

import '../model/account_info_model.dart';
import '../services/remote_services.dart';

class Controller extends GetxController{
  final accountInfoList = <AccountInfoModel>[].obs;


  @override
  void onInit() {
    getAccountInfoList();

    super.onInit();
  }

  void getAccountInfoList() async {
    try {
      await RemoteServices().getAccountInfoData().then((value) {
        accountInfoList.value = value;
      });
    } on HttpException catch (error) {
      print(error);
    }
  }
}
import 'dart:io';
import 'package:http/http.dart' as http;
import '../model/account_info_model.dart';


class RemoteServices {

  var url = "http://gd.police.gov.bd/api/AccountInfo/GetPoliceUserActivityHistoryLogByDate?fromDate=2022-11-01&toDate=2022-11-21";
  var token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiMDE3MTY5MzAxNDIiLCJzdWIiOiIwMTcxNjkzMDE0MiIsImp0aSI6IjkwOTQ3M2RmLWExMDgtNGE3ZC1iOGMxLWU4NTAyMDVlNTZhZCIsImlhdCI6MTY2OTI4NzQzNywiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiR2VuZXJhbCBVc2VyIiwibmJmIjoxNjY5Mjg3NDM2LCJleHAiOjE2NjkyOTQ2MzYsImlzcyI6Ikxvc3RBbmRGb3VuZCIsImF1ZCI6Imh0dHA6Ly9sb2NhbGhvc3Q6NjA5OTEvIn0.-tTOwGz21F45GoAeR1ApxmEs4Vg_cb6opdk1WJEoJZg";


  Future<List<AccountInfoModel>> getAccountInfoData() async {

    final response = await http.Client().get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    });

    if(response.statusCode == 200) {
      print("Response>>>>>>>>>>>>>");
      return accountInfoModelFromJson(response.body);
    }
    else {
      throw HttpException('Something went wrong!');
    }
  }
}
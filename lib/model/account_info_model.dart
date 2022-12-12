// To parse this JSON data, do
//
//     final accountInfoModel = accountInfoModelFromJson(jsonString);

import 'dart:convert';

List<AccountInfoModel> accountInfoModelFromJson(String str) => List<AccountInfoModel>.from(json.decode(str).map((x) => AccountInfoModel.fromJson(x)));

String accountInfoModelToJson(List<AccountInfoModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AccountInfoModel {
  AccountInfoModel({
    this.logTypeId,
    this.logType,
    this.actionId,
    this.actionName,
    this.description,
    this.ipAddress,
    this.date,
    this.statusId,
    this.applicationUserId,
    this.applicationUser,
    this.id,
    this.isDelete,
  });

  int? logTypeId;
  LogType? logType;
  dynamic actionId;
  String? actionName;
  String? description;
  String? ipAddress;
  DateTime? date;
  int? statusId;
  String? applicationUserId;
  dynamic applicationUser;
  int? id;
  dynamic isDelete;

  factory AccountInfoModel.fromJson(Map<String, dynamic> json) => AccountInfoModel(
    logTypeId: json["logTypeId"] == null ? null : json["logTypeId"],
    logType: json["logType"] == null ? null : LogType.fromJson(json["logType"]),
    actionId: json["actionId"],
    actionName: json["actionName"] == null ? null : json["actionName"],
    description: json["description"] == null ? null : json["description"],
    ipAddress: json["ipAddress"] == null ? null : json["ipAddress"],
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
    statusId: json["statusId"] == null ? null : json["statusId"],
    applicationUserId: json["ApplicationUserId"] == null ? null : json["ApplicationUserId"],
    applicationUser: json["ApplicationUser"],
    id: json["Id"] == null ? null : json["Id"],
    isDelete: json["isDelete"],
  );

  Map<String, dynamic> toJson() => {
    "logTypeId": logTypeId == null ? null : logTypeId,
    "logType": logType == null ? null : logType?.toJson(),
    "actionId": actionId,
    "actionName": actionName == null ? null : actionName,
    "description": description == null ? null : description,
    "ipAddress": ipAddress == null ? null : ipAddress,
    "date": date == null ? null : date?.toIso8601String(),
    "statusId": statusId == null ? null : statusId,
    "ApplicationUserId": applicationUserId == null ? null : applicationUserId,
    "ApplicationUser": applicationUser,
    "Id": id == null ? null : id,
    "isDelete": isDelete,
  };
}

class LogType {
  LogType({
    this.typeName,
    this.tableName,
    this.shortOrder,
    this.id,
    this.isDelete,
  });

  String? typeName;
  String? tableName;
  dynamic shortOrder;
  int? id;
  dynamic isDelete;

  factory LogType.fromJson(Map<String, dynamic> json) => LogType(
    typeName: json["typeName"] == null ? null : json["typeName"],
    tableName: json["tableName"] == null ? null : json["tableName"],
    shortOrder: json["shortOrder"],
    id: json["Id"] == null ? null : json["Id"],
    isDelete: json["isDelete"],
  );

  Map<String, dynamic> toJson() => {
    "typeName": typeName == null ? null : typeName,
    "tableName": tableName == null ? null : tableName,
    "shortOrder": shortOrder,
    "Id": id == null ? null : id,
    "isDelete": isDelete,
  };
}

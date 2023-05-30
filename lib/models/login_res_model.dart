// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

List<LoginResponseModel> loginResponseModelFromJson(String str) =>
    List<LoginResponseModel>.from(
        json.decode(str).map((x) => LoginResponseModel.fromJson(x)));

String loginResponseModelToJson(List<LoginResponseModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LoginResponseModel {
  int? id;
  String? username;
  String? password;
  String? name;
  String? usertype;
  dynamic createdBy;
  dynamic createdDate;
  DateTime? modifiedDate;
  int? status;
  dynamic rememberme;
  String? type;

  LoginResponseModel({
    this.id,
    this.username,
    this.password,
    this.name,
    this.usertype,
    this.createdBy,
    this.createdDate,
    this.modifiedDate,
    this.status,
    this.rememberme,
    this.type,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        id: json["id"],
        username: json["username"],
        password: json["password"],
        name: json["name"],
        usertype: json["usertype"],
        createdBy: json["created_by"],
        createdDate: json["created_date"],
        modifiedDate: json["modified_date"] == null
            ? null
            : DateTime.parse(json["modified_date"]),
        status: json["status"],
        rememberme: json["rememberme"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "password": password,
        "name": name,
        "usertype": usertype,
        "created_by": createdBy,
        "created_date": createdDate,
        "modified_date": modifiedDate?.toIso8601String(),
        "status": status,
        "rememberme": rememberme,
        "type": type,
      };
}
// {"status":2}
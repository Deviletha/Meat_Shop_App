// To parse this JSON data, do
//
//     final signUpResponseModel = signUpResponseModelFromJson(jsonString);

import 'dart:convert';

SignUpResponseModel signUpResponseModelFromJson(String str) =>
    SignUpResponseModel.fromJson(json.decode(str));

String signUpResponseModelToJson(SignUpResponseModel data) =>
    json.encode(data.toJson());

class SignUpResponseModel {
  dynamic status;
  int? userid;
  String? username;

  SignUpResponseModel({
    this.status,
    this.userid,
    this.username,
  });

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      SignUpResponseModel(
        status: json["status"],
        userid: json["userid"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "userid": userid,
        "username": username,
      };
}

import 'package:flutter/material.dart';
import 'package:meet_shop/api_helper/api_helper.dart';
import 'package:meet_shop/models/signup_res_model.dart';

class SignUpPageController extends ChangeNotifier {
  bool isLoading = false;

  Future<bool> signUp({
    required String emailId,
    required String password,
    required String phoneNumber,
    required String firstName,
    required String secondName,
    required String state,
    required String address,
    required String postal,
    required String location,
  }) async {
    bool isSuccess = false;
    isLoading = true;
    notifyListeners();

    final response = await ApiHelper().postApi(
      endPoint: '/common/signUP',
      body: {
        "contact": phoneNumber,
        "email": emailId,
        "first_name": firstName,
        "last_name": secondName,
        "address": address,
        "state": state,
        "location": location,
        "postal": postal,
        "password": password,
      },
    );

    final decodedResponse = SignUpResponseModel.fromJson(response);
    isLoading = false;
    notifyListeners();

    if (decodedResponse.status != 2) {
      isSuccess = true;
      print(response);
    }
    return isSuccess;
  }
}

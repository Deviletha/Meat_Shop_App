import 'package:flutter/material.dart';
import 'package:meet_shop/api_helper/api_helper.dart';

class LoginPageController extends ChangeNotifier {
  bool isLoading = false;

  Future<bool> login({required String userId, required String password}) async {
    bool isSuccess = false;
    isLoading = true;
    notifyListeners();

    final response = await ApiHelper().postApi(
      endPoint: '/common/authenticate',
      body: {
        'username': userId,
        'password': password,
      },
    );

    isLoading = false;
    notifyListeners();

    if (response != null) {
      isSuccess = true;
      print(response);
    }
    return isSuccess;
  }
}

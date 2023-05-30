import 'package:flutter/material.dart';
import 'package:meet_shop/api_helper/api_helper.dart';
import 'package:meet_shop/models/login_res_model.dart';

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
    final decodedResponse = LoginResponseModel.fromJson(response[0]);

    isLoading = false;
    notifyListeners();

    if (decodedResponse.status == 1) {
      isSuccess = true;
      print(response);
    }
    return isSuccess;
  }
}

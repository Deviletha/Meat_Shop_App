import 'package:flutter/material.dart';
import 'package:meet_shop/api_helper/api_helper.dart';
import 'package:meet_shop/models/categories_res_model.dart';

class CategoriesPageController extends ChangeNotifier {
  bool isLoading = false;
  List<CategoriesResModel> categoriesList = [];

  Future<bool> getCategories() async {
    bool isSuccess = false;
    isLoading = true;
    notifyListeners();

    final response = await ApiHelper().postApi(
      endPoint: '/categories',
      body: {
        'table': 'categories',
      },
    ) as List?;

    if (response != null) {
      categoriesList = response.map((item) {
        return CategoriesResModel.fromJson(item);
      }).toList();

      isLoading = false;
      notifyListeners();
      isSuccess = true;
    }
    return isSuccess;
  }
}

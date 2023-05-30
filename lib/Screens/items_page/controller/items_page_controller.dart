import 'package:flutter/material.dart';
import 'package:meet_shop/api_helper/api_helper.dart';
import 'package:meet_shop/models/items_res_model.dart';

class ItemsPageController extends ChangeNotifier {
  bool isLoading = false;
  List<ItemsResModel> itemsList = [];

  Future<bool> getItems({required int id}) async {
    bool isSuccess = false;
    isLoading = true;
    notifyListeners();

    final response = await ApiHelper().postApi(
      endPoint: '/categories/getProducts',
      body: {
        'id': id.toString(),
      },
    ) as List;
    List sampleItemList = response[0];

    if (response != null) {
      itemsList = sampleItemList.map((item) {
        return ItemsResModel.fromJson(item);
      }).toList();

      isLoading = false;
      notifyListeners();
      isSuccess = true;
    }
    return isSuccess;
  }
}

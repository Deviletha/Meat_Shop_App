// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiHelper {
  final String baseUrl = 'https://apihcart.hawkssolutions.com/public/v1';

  Future<dynamic> postApi({required String endPoint, required Map body}) async {
    try {
      print('$baseUrl$endPoint');
      print(body);
      final response = await http.post(
        Uri.parse('$baseUrl$endPoint'),
        body: body,
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
        encoding: Encoding.getByName('utf-8'),
      );
      if (response.statusCode == 200) {
        print('success');
        // Request was successful
        var responseData = jsonDecode(response.body);
        print(response.body);
        return responseData;
      } else {
        print('Failed');
        // Request failed
        print('Error: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print(e);
    }
  }

  // Future<Map<String, dynamic>?> get({required String endPoint}) async {
  //   try {
  //     final response = await http.get(
  //       Uri.parse('$baseUrl$endPoint'),
  //     );
  //     if (response.statusCode == 200) {
  //       // Request was successful
  //       Map<String, dynamic> responseData = jsonDecode(response.body);
  //       return responseData;
  //     } else {
  //       // Request failed
  //       print('Error: ${response.statusCode}');
  //       return null;
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}

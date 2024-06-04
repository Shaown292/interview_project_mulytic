import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class LogInScreenController extends GetxController {

  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController userTypeTextController = TextEditingController();

  RxBool isLoading = false.obs;
  final String apiUrl = "http://127.0.0.1:8000/api/user/login/";
  String result = ''; // To store the result from the API call

  Future<void> postData() async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(<String, dynamic>{
          'email': emailTextController.text,
          'password': passwordTextController.text,
          "user_type": userTypeTextController.text,
          // Add any other data you want to send in the body
        }),
      );

      if (response.statusCode == 200) {
        // Successful POST request, handle the response here
        final responseData = jsonDecode(response.body);
        result = 'ID: ${responseData['id']}\nName: ${responseData['name']}\nEmail: ${responseData['email']}';
        debugPrint("Success");
        debugPrint("Success ${emailTextController.text}" );

      } else {
        // If the server returns an error response, throw an exception
        throw Exception('Failed to post data');
        debugPrint("Success");
      }
    } catch (e) {
      debugPrint("Success");
      result = 'Error: $e';
    }
  }

}
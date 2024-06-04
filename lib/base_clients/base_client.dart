import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:untitled2/widgets/basic_snack_bar.dart';



class BaseClient {


  Future<dynamic> postData({
    Map<String, dynamic>? payload,
    required String url,
    required Map<String, String> header,
  }) async {
    debugPrint('Post Request: $url');
    try {
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode(payload),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ).timeout(
        const Duration(seconds: 180),
      );
      return response;
      // return returnResponse(response);
    } on TimeoutException {
      showBasicFailedSnackBar(message: "Try again later");

    }
  }


}
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

  Future<List<String>?> getCategories() async {
    final client = Dio();
    final url = 'https://fakestoreapi.com/products/categories';
    try {
      final response = await client.get(url,
          options: Options(responseType: ResponseType.bytes));
      if (response.statusCode == 200 && response.data != null) {
        return compute(parseResponse, response.data);
      } else {
        debugPrint('${response.statusCode} : ${response.data.toString()}');
      }
    } on DioError catch (error) {
      debugPrint(error.message);
    } finally {
      client.clear();
    }
    return null;
  }


List<String> parseResponse(response) => List<String>.from(
    json.decode(utf8.decode(response as List<int>)).map((x) => x));

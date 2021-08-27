import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:widgets_samples/models/item_model.dart';

Future<List<Item>?> getItems() async {
  final client = Dio();
  final url = 'https://fakestoreapi.com/products';
  try {
    final response = await client.get(url,
        options: Options(responseType: ResponseType.json));
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

List<Item> parseResponse(response) =>
    List<Item>.from(response.map((x) => Item.fromJson(x)));

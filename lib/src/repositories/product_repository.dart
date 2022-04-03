import 'dart:convert';
import 'dart:developer';

import 'package:demo_app/src/models/product_items.dart';
import 'package:flutter/services.dart';

class ProductRepository {
  Future<ProductItems> getProductItems() async {
    try {
      String response = await rootBundle.loadString('assets/items.json');
      ProductItems item = ProductItems.fromJson(json.decode(response));
      log('Response:: ${json.encode(item)}');
      return item;
    } catch (e) {
      throw Exception('Something went wrong');
    }
  }
}

import 'package:demo_app/src/models/product_items.dart';
import 'package:demo_app/src/repositories/product_repository.dart';
import 'package:demo_app/src/di/locator.dart';
import 'package:demo_app/src/viewmodels/base_model.dart';

import '../enum/viewstate.dart';

class HomeViewModel extends BaseModel {
  final productRepository = locator<ProductRepository>();

  String? error;

  ProductItems? items;

  Future<void> getProductDetails() async {
    state = ViewState.busy;
    final response = await productRepository.getProductItems().catchError((e) {
      state = ViewState.error;
      error = 'Failed to get Details';
    });

    items = response;
    state = ViewState.ideal;
  }
}

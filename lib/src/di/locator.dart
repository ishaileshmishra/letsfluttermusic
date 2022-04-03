import 'package:demo_app/src/repositories/product_repository.dart';
import 'package:demo_app/src/viewmodels/home_viewmodel.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  // Repository
  locator.registerSingleton<ProductRepository>(ProductRepository());

  // ViewModels
  locator.registerLazySingleton(() => HomeViewModel());
}

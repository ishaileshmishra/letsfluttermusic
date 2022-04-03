import 'package:demo_app/src/di/locator.dart';
import 'package:demo_app/src/screens/login/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: Brightness.dark,
          buttonTheme: const ButtonThemeData(
            buttonColor: Colors.amber,
            shape: RoundedRectangleBorder(),
            textTheme: ButtonTextTheme.accent,
          )),
      home: const LoginPage(),
    );
  }
}

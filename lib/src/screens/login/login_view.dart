import 'package:demo_app/src/screens/components/_widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          playingMusicBackground(),
          theInspiringText(context),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: theLoginBtn(context),
          ),
        ],
      ),
    );
  }
}

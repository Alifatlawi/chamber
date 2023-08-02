import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';
import '../widgets/loginPageForm.dart';
import '../widgets/logo_signin.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        const BackgroundWidget(),
        LoginBody(
          screenWidth: ScreenWidth,
          scrrenHeight: ScreenHeight,
        ),
        Positioned(
          right: 40,
          bottom: ScreenHeight * 0.035,
          child: const Icon(Icons.language),
        ),
        IgnorePointer(
          child: IconBackground(
            screenHeight: ScreenHeight,
            screenWidth: ScreenWidth,
          ),
        ),
        Positioned(
            top: ScreenHeight * 0.065,
            left: 30,
            child: const Text(
              'log in',
              style: TextStyle(fontSize: 24, color: Colors.white),
            )),
      ],
    ));
  }
}

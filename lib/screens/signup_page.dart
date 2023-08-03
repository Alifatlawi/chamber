import 'package:biligoba_chamber/screens/test_page.dart';
import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';
// import '../widgets/loginPageForm.dart';
import '../widgets/logo_signin.dart';
// import '../widgets/signup_form.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
        const TestT(),
        Positioned(
          right: ScreenWidth * 0.06,
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
            left: ScreenWidth * 0.065,
            child: Text(
              'create account',
              style:
                  TextStyle(fontSize: ScreenHeight * 0.03, color: Colors.white),
            )),
      ],
    ));
  }
}

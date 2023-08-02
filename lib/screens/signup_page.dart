import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';
// import '../widgets/loginPageForm.dart';
import '../widgets/logo_signin.dart';
import '../widgets/signup_form.dart';

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
        SignupBody(
          screenWidth: ScreenWidth,
          screenHeight: ScreenHeight,
        ),
        Positioned(
          right: 30,
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
              'create account',
              style: TextStyle(fontSize: 24, color: Colors.white),
            )),
      ],
    ));
  }
}

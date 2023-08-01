import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  // final Widget child;
  // final String overlayText;
  final screenHeight;
  final screenWidth;
  const BackgroundWidget(
      {Key? key, required this.screenHeight, required this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    // // Calculate the scales based on screen width. You can adjust this calculation as needed.
    // double scale1 = screenWidth / 720;
    // double scale2 = screenWidth / 720;
    // double scale3 = screenWidth / 720;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFE5E7EB),
            Color(0xFFE5E7EB),
            Color(0xFF999DAE),
            Color(0xFFE5E7EB),
          ],
        ),
      ),
    );
  }
}

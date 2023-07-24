import 'package:flutter/material.dart';

class SecondBackgraoundWidget extends StatelessWidget {
  final Widget child;
  const SecondBackgraoundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    // You can define default values for a reference screen height.
    // Here I'm assuming the original values are for a screen height of 852.
    double offsetY = -500;
    double offsetX = 110;
    double scale = 2.6;

    // Then you can compute the adjusted values for the current screen height.
    if (screenHeight <= 720) {
      offsetY = -490; // Adjust this value for screenHeight = 716
      offsetX = 120;
      scale = 2.8; // Adjust this value for screenHeight = 716
    }
    return Stack(
      children: [
        Container(
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
        ),
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            child: Transform.translate(
              offset: Offset(offsetX, offsetY),
              child: Transform.scale(
                scale: scale,
                child: Image.asset(
                  'assets/images/top2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.04,
            left: 18,
            child: Image.asset(
              'assets/images/chamber.png',
              fit: BoxFit.cover,
              width: 60,
            )),
        Container(child: child),
      ],
    );
  }
}

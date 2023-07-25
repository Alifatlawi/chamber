import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  final String overlayText;
  const BackgroundWidget(
      {super.key, required this.child, required this.overlayText});

  @override
  Widget build(BuildContext context) {
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
        Image.asset('assets/images/top.png'),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.1,
          left: 18,
          child: Text(
            overlayText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Center(child: child),
      ],
    );
  }
}

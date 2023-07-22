import 'package:flutter/material.dart';

class SecondBackgraoundWidget extends StatelessWidget {
  final Widget child;
  const SecondBackgraoundWidget({super.key, required this.child});

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
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            // heightFactor: 0.6,
            child: Transform.translate(
              offset: const Offset(85, -450),
              child: Transform.scale(
                scale: 2.5,
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

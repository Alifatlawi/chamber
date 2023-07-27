// import 'dart:math';

// import 'package:flutter/material.dart';

// class TestPage extends StatelessWidget {
//   final Widget child;

//   const TestPage({
//     Key? key,
//     required this.child,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // final deviceWidth = MediaQuery.of(context).size.width;
//     final orientation = MediaQuery.of(context).orientation;
//     return orientation == Orientation.landscape
//         ? Scaffold(
//             body: Stack(
//               children: [
//                 Positioned(
//                   top: 0,
//                   left: 0,
//                   child: CustomPaint(
//                     size: const Size(150, 130),
//                     painter: RPSCustomPainter(),
//                   ),
//                 ),
//                 Positioned(
//                   top: -10,
//                   left: -1100,
//                   right: 20,
//                   child: CustomPaint(
//                     size: const Size(100, 570),
//                     painter: RPSCustomPainter1(),
//                   ),
//                 ),
//                 child,
//               ],
//             ),
//           )
//         : Scaffold(
//             body: Stack(
//               children: [
//                 Positioned(
//                   top: 0,
//                   left: 0,
//                   child: CustomPaint(
//                     size: const Size(150, 150),
//                     painter: RPSCustomPainter(),
//                   ),
//                 ),
//                 Positioned(
//                   top: -10,
//                   left: -380,
//                   right: 20,
//                   child: CustomPaint(
//                     size: const Size(80, 580),
//                     painter: RPSCustomPainter1(),
//                   ),
//                 ),
//                 child,
//               ],
//             ),
//           );
//   }
// }

// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paintFill0 = Paint()
//       ..color = const Color.fromARGB(255, 16, 76, 213)
//       ..style = PaintingStyle.fill;
//     var center = Offset(0, size.height / 2.5);

//     double radius = min(size.width / 2, size.height / 2);

//     var shadowPath = Path();
//     shadowPath.addArc(
//         Rect.fromCircle(center: center, radius: radius), -pi / 2, pi);
//     canvas.drawShadow(shadowPath, Colors.black, 5.0, false);

//     canvas.drawArc(
//         Rect.fromCircle(center: center, radius: radius), // This
//         -pi / 2,
//         pi,
//         false,
//         paintFill0);

//     Paint paintStroke0 = Paint()
//       ..color = const Color.fromARGB(158, 0, 0, 0)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     // Draw stroke
//     canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2, pi,
//         false, paintStroke0);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

// class RPSCustomPainter1 extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Double the width
//     size = Size(size.width * 2, size.height);

//     // Layer 1

//     Paint paintFill0 = Paint()
//       ..color = const Color.fromARGB(255, 16, 76, 213)
//       ..style = PaintingStyle.fill
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.2916667, size.height * 0.0014286);
//     path_0.lineTo(size.width * 0.2916667, size.height * 0.1628571);
//     path_0.lineTo(size.width * 0.2908333, size.height * 0.1714286);
//     path_0.lineTo(size.width * 0.2900000, size.height * 0.1800000);
//     path_0.lineTo(size.width * 0.2891667, size.height * 0.1871429);
//     path_0.lineTo(size.width * 0.2866667, size.height * 0.1957143);
//     path_0.lineTo(size.width * 0.2841667, size.height * 0.2042857);
//     path_0.lineTo(size.width * 0.2825000, size.height * 0.2085714);
//     path_0.lineTo(size.width * 0.6633333, size.height * 0.2050000);
//     path_0.lineTo(size.width * 0.6725000, size.height * 0.1985714);
//     path_0.lineTo(size.width * 0.6783333, size.height * 0.1985714);
//     path_0.lineTo(size.width * 0.6816667, size.height * 0.1985714);
//     path_0.lineTo(size.width * 0.6816667, 0);

//     // Adding Shadow to the Path
//     final shadowColor =
//         Colors.black.withOpacity(0.7); // Customize color & opacity
//     const elevation = 15.0; // Customize elevation
//     canvas.drawShadow(path_0, shadowColor, elevation, true);

//     canvas.drawPath(path_0, paintFill0);

//     // Layer 1

//     Paint paintStroke0 = Paint()
//       ..color = const Color.fromARGB(158, 0, 0, 0)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = size.width * 0.00
//       ..strokeCap = StrokeCap.butt
//       ..strokeJoin = StrokeJoin.miter;

//     canvas.drawPath(path_0, paintStroke0);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  final Widget child;
  const TestPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Stack(
              children: <Widget>[
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
                Positioned(
                  top: -5,
                  left: 0,
                  child: Image.asset('assets/images/test.png', width: 120),
                ),
                Positioned(
                  top: 0,
                  left: 120,
                  child: Image.asset(
                    'assets/images/test2.png',
                    width: 180,
                  ),
                ),
                Positioned(
                  top: -7,
                  left: 300,
                  child: Image.asset('assets/images/test3.png', width: 180),
                ),
                child,
              ],
            );
          } else {
            return Stack(
              children: <Widget>[
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
                Positioned(
                  top: -5,
                  left: 0,
                  child: Image.asset('assets/images/test.png', width: 120),
                ),
                Positioned(
                  top: -1,
                  left: 120,
                  child: Image.asset(
                    'assets/images/test2.png',
                    width: 180,
                  ),
                ),
                Positioned(
                  top: -1,
                  left: 300,
                  child: Image.asset(
                    'assets/images/test2.png',
                    width: 180,
                  ),
                ),
                Positioned(
                  top: -1,
                  left: 480,
                  child: Image.asset(
                    'assets/images/test2.png',
                    width: 180,
                  ),
                ),
                Positioned(
                  top: -1,
                  left: 660,
                  child: Image.asset(
                    'assets/images/test2.png',
                    width: 180,
                  ),
                ),
                Positioned(
                  top: -8,
                  left: 840,
                  child: Image.asset('assets/images/test3.png', width: 180),
                ),
                child,
              ],
            );
          }
        },
      ),
    );
  }
}

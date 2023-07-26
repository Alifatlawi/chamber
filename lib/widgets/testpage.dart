import 'dart:math';

import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  final Widget child;

  const TestPage({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final deviceWidth = MediaQuery.of(context).size.width;
    final orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.landscape
        ? Scaffold(
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: CustomPaint(
                    size: const Size(150, 130),
                    painter: RPSCustomPainter(),
                  ),
                ),
                Positioned(
                  top: -10,
                  left: -1100,
                  right: 20,
                  child: CustomPaint(
                    size: const Size(100, 570),
                    painter: RPSCustomPainter1(),
                  ),
                ),
                child,
              ],
            ),
          )
        : Scaffold(
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: CustomPaint(
                    size: const Size(150, 150),
                    painter: RPSCustomPainter(),
                  ),
                ),
                Positioned(
                  top: -10,
                  left: -380,
                  right: 20,
                  child: CustomPaint(
                    size: const Size(80, 580),
                    painter: RPSCustomPainter1(),
                  ),
                ),
                child,
              ],
            ),
          );
  }
}

// class BiligobaCliper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     debugPrint(size.width.toString());
//     var path = Path();
//     path.lineTo(0, size.height);
//     var firstStart = Offset(size.width / 2, size.height - 10);
//     var firstEnd = Offset(size.width / 50, size.height - 200.0);

//     path.quadraticBezierTo(
//         firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

//     var secondStart = Offset(size.width - (size.width / 12), size.height + 80);
//     var secondEnd = Offset(size.width, size.height - 40);

//     path.quadraticBezierTo(
//         secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     // TODO: implement shouldReclip
//     throw UnimplementedError();
//   }
// }

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 16, 76, 213)
      ..style = PaintingStyle.fill;
    var center = Offset(0, size.height / 2.5);

    double radius = min(size.width / 2, size.height / 2);

    var shadowPath = Path();
    shadowPath.addArc(
        Rect.fromCircle(center: center, radius: radius), -pi / 2, pi);
    canvas.drawShadow(shadowPath, Colors.black, 5.0, false);

    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius), // This
        -pi / 2,
        pi,
        false,
        paintFill0);

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(158, 0, 0, 0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    // Draw stroke
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2, pi,
        false, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Double the width
    size = Size(size.width * 2, size.height);

    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 16, 76, 213)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2916667, size.height * 0.0014286);
    path_0.lineTo(size.width * 0.2916667, size.height * 0.1628571);
    path_0.lineTo(size.width * 0.2908333, size.height * 0.1714286);
    path_0.lineTo(size.width * 0.2900000, size.height * 0.1800000);
    path_0.lineTo(size.width * 0.2891667, size.height * 0.1871429);
    path_0.lineTo(size.width * 0.2866667, size.height * 0.1957143);
    path_0.lineTo(size.width * 0.2841667, size.height * 0.2042857);
    path_0.lineTo(size.width * 0.2825000, size.height * 0.2085714);
    path_0.lineTo(size.width * 0.6633333, size.height * 0.2050000);
    path_0.lineTo(size.width * 0.6725000, size.height * 0.1985714);
    path_0.lineTo(size.width * 0.6783333, size.height * 0.1985714);
    path_0.lineTo(size.width * 0.6816667, size.height * 0.1985714);
    path_0.lineTo(size.width * 0.6816667, 0);

    // Adding Shadow to the Path
    final shadowColor =
        Colors.black.withOpacity(0.7); // Customize color & opacity
    const elevation = 15.0; // Customize elevation
    canvas.drawShadow(path_0, shadowColor, elevation, true);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(158, 0, 0, 0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

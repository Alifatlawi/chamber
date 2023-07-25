import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: BiligobaCliper(),
                child: Container(
                  color: Colors.deepPurpleAccent,
                  height: 150,
                ),
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: BiligobaCliper(),
                child: Container(
                  color: Colors.deepPurpleAccent,
                  height: 130,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BiligobaCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 2, size.height - 10);
    var firstEnd = Offset(size.width / 50, size.height - 200.0);

    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 12), size.height + 80);
    var secondEnd = Offset(size.width, size.height - 40);

    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

class BiligobaCliper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 2, size.height - 10);
    var firstEnd = Offset(size.width / 10, size.height - 150.0);

    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height + 20);
    var secondEnd = Offset(size.width, size.height - 10);

    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

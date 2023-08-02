import 'package:flutter/material.dart';

class IconBackground extends StatelessWidget {
  final screenHeight;
  final screenWidth;

  const IconBackground(
      {super.key, required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    final widgetHeight = screenHeight * 0.35;

    const leftImageWidth = 109.0;
    const leftImageHeight = 373.0;
    final leftWidgetWidth = ((leftImageWidth * widgetHeight) / leftImageHeight);
    const rightImageWidth = 165.0;
    const rightImageHeight = 375.0;
    final rightWidgetWidth =
        ((rightImageWidth * widgetHeight) / rightImageHeight);
    // const middleImageWidth = 143.0;
    const middleImageHeight = 375.0;
    final middleWidgetWidth =
        (screenWidth - (leftWidgetWidth + rightWidgetWidth)) as double;
    return Container(
      height: widgetHeight,
      child: Row(
        children: [
          Image(
            image: AssetImage('assets/images/left.png'),
            width: leftWidgetWidth,
            height: widgetHeight,
          ),
          Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/middle.png'),
              width: middleWidgetWidth,
              height: middleImageHeight),
          Image(
            image: AssetImage('assets/images/right.png'),
            width: rightWidgetWidth,
            height: widgetHeight,
          ),
        ],
      ),
    );
  }
}

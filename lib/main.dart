// import 'package:biligoba_chamber/screens/login_page.dart';
import 'package:biligoba_chamber/screens/map_page.dart';
// import 'package:biligoba_chamber/widgets/testpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
    );
  }
}

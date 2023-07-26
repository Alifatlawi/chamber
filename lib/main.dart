// import 'package:biligoba_chamber/screens/create_account_page.dart';
// import 'package:biligoba_chamber/screens/home_page.dart';
// import 'package:biligoba_chamber/screens/login_page.dart';
import 'package:biligoba_chamber/widgets/testpage.dart';
// import 'package:biligoba_chamber/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestPage(),
      // LoginPage(),
    );
  }
}

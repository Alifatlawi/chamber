import 'package:flutter/material.dart';

import '../widgets/background_widget.dart';
import '../widgets/logo_signin.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenWidth = MediaQuery.of(context).size.width;
    // ignore: non_constant_identifier_names
    final ScreenHeight = MediaQuery.of(context).size.height;
    bool isChecked = false;
    return Scaffold(
        body: Stack(
      children: [
        BackgroundWidget(screenWidth: ScreenWidth, screenHeight: ScreenHeight),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(top: 27.0),
                      child: const DropdownButtonExample(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Phone",
                        labelStyle: TextStyle(color: Colors.black),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Text('OR*'),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "E-Mail",
                  labelStyle: TextStyle(color: Colors.black),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)),
              ),
              Row(
                children: [
                  Checkbox(value: isChecked, onChanged: null),
                  const Text('Keep me logged in'),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
        IconBackground(
          screenHeight: ScreenHeight,
          screenWidth: ScreenWidth,
        )
      ],
    ));
  }
}

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.arrow_downward,
        size: 17,
      ),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2, // Define the thickness of the underline
        color: Colors.grey, // Define the color of the underline
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: const Text('Code'),
        );
      }).toList(),
    );
  }
}

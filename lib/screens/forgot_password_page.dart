import 'package:biligoba_chamber/widgets/background_widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: const CountryCodePicker(
                      initialSelection: 'TR',
                      flagWidth: 28,
                      dialogBackgroundColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.only(left: 0, right: 50),
                      child: const TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 0),
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Phone',
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 50, top: 8),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'OR*',
                    style: TextStyle(
                        color: Color.fromARGB(143, 0, 0, 0), fontSize: 12),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 50, right: 50),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 0),
                    border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'E-mail',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => Homepage()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF60646f),
                    ),
                    child: const Text(
                      'Send',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 30),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 35,
                  color: Color(0xFF60646f),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

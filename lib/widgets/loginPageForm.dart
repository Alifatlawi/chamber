import 'package:flutter/material.dart';

import 'dropdown_buttom.dart';

class LoginBody extends StatefulWidget {
  final double screenWidth;
  final double scrrenHeight;

  const LoginBody({
    Key? key,
    required this.screenWidth,
    required this.scrrenHeight,
  }) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: widget.screenWidth * 0.12,
            right: widget.screenWidth * 0.12,
            top: widget.scrrenHeight * 0.20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.only(top: 27.9),
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
            SizedBox(height: widget.scrrenHeight * 0.020),
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
                Checkbox(
                  value: isChecked,
                  onChanged: (newValue) {
                    setState(() {
                      isChecked = newValue!;
                    });
                  },
                ),
                const Text(
                  'Keep me logged in',
                  style: TextStyle(fontSize: 12),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(height: widget.scrrenHeight * 0.020),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF60646f),
                    fixedSize: Size(
                        widget.screenWidth * 0.65, widget.scrrenHeight * 0.06)),
                child: Text(
                  'Log In',
                  style: TextStyle(
                      fontSize: widget.scrrenHeight * 0.03,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: widget.scrrenHeight * 0.020),
            Center(
              child: GestureDetector(
                onTap: () {
                  // Put your navigation code here
                },
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                          text: "Don't you have an account? ",
                          style: TextStyle(color: Colors.black, fontSize: 12)),
                      TextSpan(
                        text: 'Create Account',
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: widget.scrrenHeight * 0.050),
            const Center(
              child: Text(
                'Log in with',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/facebook.png',
                        width: 30,
                        height: 30,
                      ),
                      const Text(
                        'Facebook',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        width: 30,
                        height: 30,
                      ),
                      const Text(
                        'Google',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/twitter.png',
                        width: 30,
                        height: 30,
                      ),
                      const Text(
                        'Twitter',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

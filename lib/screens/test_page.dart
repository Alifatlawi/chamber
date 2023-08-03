import 'package:flutter/material.dart';

import '../widgets/dropdown_buttom.dart';

class TestT extends StatelessWidget {
  const TestT({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.18,
              left: screenWidth * 0.09,
              right: screenWidth * 0.09,
            ),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(top: screenHeight * 0.04),
                          child: const DropdownButtonExample(),
                        ),
                      ),
                      SizedBox(width: screenHeight * 0.01),
                      Expanded(
                        flex: 4,
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Phone",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: screenHeight * 0.022),
                            border: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: screenHeight * 0.02,
                  child: Text(
                    "OR*",
                    style: TextStyle(fontSize: screenHeight * 0.015),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                  color: Colors.blue,
                  height: screenHeight * 0.1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(),
                      labelText: "E-Mail",
                      labelStyle: TextStyle(
                          color: Colors.black, fontSize: screenHeight * 0.022),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.025,
                ),
                Container(
                  color: Colors.red,
                  height: screenHeight * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        // contentPadding:
                        //     EdgeInsets.symmetric(vertical: screenHeight * 0.05),
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: screenHeight * 0.022),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        suffixIcon: const Icon(Icons.remove_red_eye_outlined)),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.08,
                  child: TextFormField(
                    decoration: InputDecoration(
                        // contentPadding:
                        //     EdgeInsets.symmetric(vertical: screenHeight * 0.05),
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: screenHeight * 0.022),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                  ),
                ),
                Container(
                  height: screenHeight * 0.08,
                  child: Row(
                    children: [
                      Checkbox(
                          value: false,
                          onChanged: (bool? value) {
                            // setState(() {
                            //   _isChecked = value!;
                            // });
                          }),
                      Text(
                        'I Agree',
                        style: TextStyle(
                          fontSize: screenHeight * 0.02,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Terms & Conditions'),
                                content: const SingleChildScrollView(
                                  child: ListBody(
                                    children: <Widget>[
                                      Text('Here are a few examples:'
                                          '\n\n1. The Intellectual Property disclosure will inform users that the contents, logo and other visual media you created is your property and is protected by copyright laws.'
                                          '\n\n2. A Termination clause will inform that users\' accounts on your website and mobile app or users\' access to your website and mobile (if users can\'t have an account with you) can be terminated in case of abuses or at your sole discretion.'
                                          '\n\n3. A Governing Law will inform users which laws govern the agreement. This should the country in which your company is headquartered or the country from which you operate your website and mobile app.'
                                          '\n\n4. A Links To Other Web Sites clause will inform users that you are not responsible for any third party websites that you link to. This kind of clause will generally inform users that they are responsible for reading and agreeing (or disagreeing) with the Terms and Conditions or Privacy Policies of these third parties.'
                                          '\n\nIf your website or mobile app allows users to create content and make that content public to other users, a Content section will inform users that they own the rights to the content they have created. The "Content" clause usually mentions that users must give you (the website or mobile app developer) a license so that you can share this content on your website/mobile app and to make it available to other users.'
                                          '\n\nBecause the content created by users is public to other users, a DMCA notice clause (or Copyright Infringement) section is helpful to inform users and copyright authors that, if any content is found to be a copyright infringement, you will respond to any DMCA takedown notices received and you will take down the content.'
                                          '\n\nA Limit What Users Can Do clause can inform users that by agreeing to use your service, they\'re also agreeing to not do certain things. This can be part of a very long and thorough list in your Terms and Conditions agreements so as to encompass the most amount of negative uses.'
                                          '\n\nIf your website or mobile app allows users to create content and make that content public to other users, a Content section will inform users that they own the rights to the content they have created. The "Content" clause usually mentions that users must give you (the website or mobile app developer) a license so that you can share this content on your website/mobile app and to make it available to other users.'),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('X'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          'Terms and conditons',
                          style: TextStyle(
                            fontSize: screenHeight * 0.02,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: screenHeight * 0.08,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xFF60646f),
                          fixedSize: Size(
                            screenWidth * 0.55,
                            screenHeight * 0.055,
                          )),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                            fontSize: screenHeight * 0.024,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Container(
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        // Put your navigation code here
                      },
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: "Are you already a member? ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12)),
                            TextSpan(
                              text: 'Log in',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Log in with',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Container(
                  padding: EdgeInsets.only(top: screenHeight * 0.001),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/facebook.png',
                            height: screenHeight * 0.03,
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
                            height: screenHeight * 0.03,
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
                            height: screenHeight * 0.03,
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
          )
        ],
      ),
    );
  }
}

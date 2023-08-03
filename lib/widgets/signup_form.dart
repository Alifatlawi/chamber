import 'package:flutter/material.dart';

import 'dropdown_buttom.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({Key? key}) : super(key: key);

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        final double maxWidth = constraints.maxWidth;
        final double maxHeight = constraints.maxHeight;
        final double unitHeight = maxHeight / 100;
        final double unitWidth = maxWidth / 100;

        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: unitWidth * 12,
              vertical: unitHeight * 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(top: unitHeight * 2.79),
                        child: const DropdownButtonExample(),
                      ),
                    ),
                    SizedBox(width: unitWidth * 2),
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Phone",
                          labelStyle: TextStyle(
                              color: Colors.black, fontSize: unitWidth * 4.5),
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text('OR*'),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "E-Mail",
                    labelStyle: TextStyle(
                        color: Colors.black, fontSize: unitWidth * 4.5),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                SizedBox(height: unitHeight * 3.5),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: Colors.black, fontSize: unitWidth * 4.5),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                          color: Colors.black, fontSize: unitWidth * 4.5),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                ),
                Row(
                  children: [
                    Checkbox(
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        }),
                    Text(
                      'I Agree',
                      style: TextStyle(
                        fontSize: unitWidth * 3,
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
                          fontSize: unitWidth * 3,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: unitHeight * 2),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFF60646f),
                        fixedSize: Size(
                          unitWidth * 65,
                          unitHeight * 6,
                        )),
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                          fontSize: screenHeight * 0.03,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: unitHeight * 2),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      // Put your navigation code here
                    },
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "Are you already a member? ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12)),
                          TextSpan(
                            text: 'Log in',
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: unitHeight * 5),
                const Center(
                  child: Text(
                    'Log in with',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: unitHeight * 1.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/facebook.png',
                            width: unitWidth * 6,
                            height: unitHeight * 6,
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
                            width: unitWidth * 6,
                            height: unitHeight * 6,
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
                            width: unitWidth * 6,
                            height: unitHeight * 6,
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
      },
    );
  }
}

// import 'package:biligoba_chamber/screens/home_page.dart';
import 'package:biligoba_chamber/screens/login_page.dart';
import 'package:biligoba_chamber/widgets/background_widget.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        overlayText: 'create account',
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.25),
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
                    margin: const EdgeInsets.only(left: 4, right: 50),
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
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.only(left: 50, right: 50),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: Icon(Icons.visibility)),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 50, right: 50),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: Icon(Icons.visibility)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      }),
                  const Text(
                    'I Agree',
                    style: TextStyle(fontSize: 10),
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
                    child: const Text(
                      'Terms and conditons',
                      style: TextStyle(
                        fontSize: 10,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                width: 200,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF60646f),
                  ),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Are you already a memeber?',
                  style: TextStyle(fontSize: 10),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Text('Log in', style: TextStyle(fontSize: 10)),
                )
              ],
            ),
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
            )
          ],
        ),
      ),
    );
  }
}

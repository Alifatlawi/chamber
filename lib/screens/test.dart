import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  late bool isEdit;
  @override
  void initState() {
    isEdit = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isEdit
                  ? ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: double.infinity,
                        minHeight: 0.0,
                        maxHeight: 200.0,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 40,
                            color: Color(0xffff0000),
                            child: Center(
                                child: Text(
                              'TR',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 30,
                            width: 40,
                            color: Colors.blue,
                            child: Center(
                                child: Text(
                              'EN',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 30,
                            width: 40,
                            color: Colors.yellow,
                            child: Center(
                                child: Text(
                              'AR',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                          ),
                        ],
                      ),
                    )
                  : Container(),
              Center(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isEdit = !isEdit;
                    });
                  },
                  icon: Icon(Icons.language),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

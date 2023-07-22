import 'package:biligoba_chamber/widgets/second_background.dart';
import 'package:flutter/material.dart';

import '../models/main_chat.dart';
import 'chat_page.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final List<ChatMessage> chatMessages = [
    ChatMessage(
      contactName: 'Contact 1',
      message: 'Hello',
      imagePath: 'assets/images/chamber.png',
      isUser: true,
    ),
    ChatMessage(
      contactName: 'Contact 1',
      message: 'Hello',
      imagePath: 'assets/images/chamber.png',
      isUser: true,
    ),
    ChatMessage(
      contactName: 'Contact 1',
      message: 'Hello',
      imagePath: 'assets/images/chamber.png',
      isUser: true,
    ),
    ChatMessage(
      contactName: 'Contact 1',
      message: 'Hello',
      imagePath: 'assets/images/chamber.png',
      isUser: true,
    ),
    ChatMessage(
      contactName: 'Contact 1',
      message: 'Hello',
      imagePath: 'assets/images/chamber.png',
      isUser: true,
    ),
    ChatMessage(
      contactName: 'Contact 1',
      message: 'Hello',
      imagePath: 'assets/images/chamber.png',
      isUser: true,
    ),
    ChatMessage(
      contactName: 'Contact 1',
      message: 'Hello',
      imagePath: 'assets/images/chamber.png',
      isUser: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SecondBackgraoundWidget(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 55, left: 15, right: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.camera_alt,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    'CHATS',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'FEATURE1',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'FEATURE2',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatMessages.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 60, right: 40),
                        child: const Divider(
                          color: Color.fromARGB(143, 0, 0, 0),
                          thickness: 1.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ChatPage(chatMessage: chatMessages[index]),
                            ),
                          );
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            maxRadius: 30,
                            backgroundImage:
                                AssetImage(chatMessages[index].imagePath),
                          ),
                          title: Text(chatMessages[index].contactName),
                          subtitle: Text(chatMessages[index].message),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

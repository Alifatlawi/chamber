import 'package:biligoba_chamber/widgets/chatPage_widget.dart';
import 'package:flutter/material.dart';
import 'package:biligoba_chamber/models/main_chat.dart';

import '../widgets/chat_bubble.dart';

class ChatPage extends StatelessWidget {
  final ChatMessage chatMessage;
  final List<ChatMessage> chatMessages = List.generate(
    20,
    (index) => ChatMessage(
      contactName: 'Contact $index',
      message: 'Message $index',
      imagePath: 'assets/images/image_$index.jpg',
      isUser: index % 2 == 0,
    ),
  );

  ChatPage({Key? key, required this.chatMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ChatPageWidget(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30, left: 15, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        maxRadius: 30,
                        // backgroundImage: AssetImage('asstes/images/twitter.png'),
                      ),
                      const SizedBox(width: 5),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Friend Zone',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'some useless info',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Icon(Icons.camera_alt_rounded),
                          PopupMenuButton<String>(
                            onSelected: (value) {
                              print('You selected: $value');
                            },
                            itemBuilder: (BuildContext context) {
                              return <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: 'Option 1',
                                  child: Text('Option 1'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Option 2',
                                  child: Text('Option 2'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'Option 3',
                                  child: Text('Option 3'),
                                ),
                              ];
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: chatMessages.length,
                    itemBuilder: (context, index) {
                      return ChatBubble(chatMessage: chatMessages[index]);
                    },
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomAppBar(
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.all(2.0), // Reduced padding
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.camera, size: 24.0), // Smaller icon
                        onPressed: () {
                          // Functionality to open camera
                        },
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(fontSize: 12.0), // Smaller font size
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 10.0), // Reduced content padding
                            fillColor: Colors.purple,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            hintText: 'Type a message',
                          ),
                          onSubmitted: (String value) {
                            // Functionality when a message is submitted
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send, size: 24.0), // Smaller icon
                        onPressed: () {
                          // Functionality to send message
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

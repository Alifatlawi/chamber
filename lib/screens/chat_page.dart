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
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    left: MediaQuery.of(context).size.height * 0.025,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        color: Colors.white,
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
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
                            onSelected: (value) {},
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
                const SizedBox(height: 50),
                Expanded(
                  child: ListView.builder(
                    itemCount: chatMessages.length,
                    itemBuilder: (context, index) {
                      return ChatBubble(chatMessage: chatMessages[index]);
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 2),
                          child: SizedBox(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                hintText: 'Enter message',
                                suffixIcon: Icon(Icons.mic),
                                filled: true,
                                fillColor: Colors.blue,
                                contentPadding:
                                    EdgeInsets.all(5.0), // Add vertical padding
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_upward)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.camera_alt)),
                      const SizedBox(width: 4),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                  child: Container(color: Colors.deepPurple),
                )
              ],
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: SafeArea(
            //     child: Container(
            //       color: Colors.white,
            //       padding: EdgeInsets.only(
            //           bottom: MediaQuery.of(context).viewInsets.bottom),
            //       child: Row(
            //         children: [
            //           Flexible(
            //             child: TextField(
            //               // controller: _textController,
            //               // onSubmitted: _handleSubmitted,
            //               decoration: InputDecoration.collapsed(
            //                   hintText: "Type a message"),
            //             ),
            //           ),
            //           IconButton(
            //               icon:
            //                   Icon(Icons.send, color: Colors.green, size: 30.0),
            //               onPressed: () {}),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

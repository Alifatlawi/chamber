import 'package:flutter/material.dart';

import '../models/main_chat.dart';

class ChatBubble extends StatelessWidget {
  final ChatMessage chatMessage;

  const ChatBubble({super.key, required this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:
          chatMessage.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: chatMessage.isUser ? Colors.purple : Colors.blue,
        ),
        child: Text(
          chatMessage.message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

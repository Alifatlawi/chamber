class ChatMessage {
  final String contactName;
  final String message;
  final String imagePath;
  final bool isUser; // new field

  ChatMessage({
    required this.contactName,
    required this.message,
    required this.imagePath,
    required this.isUser, // new field
  });
}

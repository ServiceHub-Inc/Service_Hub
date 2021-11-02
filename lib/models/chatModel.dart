class Chats {
  final String imageUrl;
  final String serviceTitle;
  final double priceRange;
  final String serviceDescription;

  Chats(
      {this.imageUrl,
      this.priceRange,
      this.serviceDescription,
      this.serviceTitle});
}

class ChatMessage {
  final String messageText;
  final String createdAt;
  final ChatMedia media;
  final bool fromUser;

  ChatMessage({
    this.messageText,
    this.createdAt,
    this.fromUser,
    this.media,
  });
}

class ChatMedia {
  final String mediaType;
  final dynamic media;

  ChatMedia({this.mediaType, this.media});
}

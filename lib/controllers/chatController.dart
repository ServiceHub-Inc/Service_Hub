import 'dart:math';

import 'package:get/state_manager.dart';
import 'package:servicehub/models/chatModel.dart';

class ChatController extends GetxController {
  // declare the list

  final memberChatList = [ChatMessage()].obs;

  // getter for the list
  void onInit() {
    super.onInit();
    fetchChatList();
  }

  void replyMessage() {
    var chatList1 = [
      ChatMessage(
        createdAt: '10 : 15 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "Hi..",
      ),
      ChatMessage(
        createdAt: '10 : 15 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "I am Ameri, the service provider..",
      ),
      ChatMessage(
        createdAt: '10 : 18 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "Okay. Glad to have you.",
      ),
      ChatMessage(
        createdAt: '10 : 19 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "So what time tomorrow can you come over?",
      ),
      ChatMessage(
        createdAt: '10 : 20 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "I'll let you know by close of day.",
      ),
      ChatMessage(
        createdAt: '10 : 20 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "Hope that's fine by you?",
      ),
      ChatMessage(
        createdAt: '10 : 21 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "Can I see a picture of any of your works",
      ),
      ChatMessage(
        createdAt: '10 : 21 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "ok.. A second..",
      ),
      ChatMessage(
        createdAt: '10 : 23 am',
        fromUser: false,
        media: ChatMedia(mediaType: 'image', media: null),
        messageText: null,
      ),
      ChatMessage(
        createdAt: '10 : 24 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "Ok.. Nice",
      ),
      ChatMessage(
        createdAt: '10 : 25 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "I'll be expecting to hear from you. Thanks.",
      ),
      ChatMessage(
        createdAt: '10 : 25 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "Sure",
      ),
      ChatMessage(
        createdAt: '4 : 52 pm',
        fromUser: false,
        media: ChatMedia(),
        messageText:
            "Hi.. So I checked my schedule and I think 1pm will be okay.\n Is that okay for you too?",
      ),
      ChatMessage(
        createdAt: '4 : 58 pm',
        fromUser: false,
        media: ChatMedia(),
        messageText: "Perfect!! I'd have closed by that time.",
      ),
    ];

    Random random = new Random();
    int index = random.nextInt(chatList1.length);
    var reply = chatList1[index];

    memberChatList.add(reply);
  }

  // the function to retrive the list- Api goes here
  void fetchChatList() async {
    await Future.delayed(Duration(seconds: 1));
    var chatList = [
      ChatMessage(
        createdAt: '10 : 12 am',
        fromUser: true,
        media: ChatMedia(),
        messageText: "Hi..",
      ),
      ChatMessage(
        createdAt: '10 : 15 am',
        fromUser: true,
        media: ChatMedia(),
        messageText: "Hi",
      ),
      ChatMessage(
        createdAt: '10 : 15 am',
        fromUser: false,
        media: ChatMedia(),
        messageText: "I am Ameri, the service provider..",
      ),
    ];

    memberChatList.assignAll(chatList);
  }
}

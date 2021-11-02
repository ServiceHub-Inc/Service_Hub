import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/controllers/chatController.dart';
import 'package:servicehub/utils/callsEmailService.dart';

class ChatDetailPage extends StatefulWidget {
  final String username;

  const ChatDetailPage({Key key, this.username}) : super(key: key);
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  final chatListController = Get.put(ChatController());
  final UrlLauncherService _service = UrlLauncherService();

  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool textEntered = false;
  String avatarText = 'AG';

  @override
  void initState() {
    _focusNode.addListener(() {
      if (_focusNode.hasFocus && _controller.text.isNotEmpty) {
        setState(() {
          textEntered = true;
        });
      }
    });

    if (widget.username != null) {
      var names = widget.username.split(' ');
      if (names.length > 1) {
        avatarText = names[0][0] + names[1][0];
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('32CD32'),
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          title: Row(
            children: [
              CircleAvatar(
                radius: 12.5,
                backgroundColor: Colors.white,
                child: Text(
                  avatarText.toUpperCase(),
                  style: GoogleFonts.oxygen(
                    fontSize: 12,
                    color: HexColor('32CD32'),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                widget.username ?? 'Ameri Gurui Adeyi',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                _service.call('0548739273');
              },
              icon: Icon(Icons.add_call, color: Colors.white),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 10.0,
                ),
                child: Obx(() {
                  if (chatListController.memberChatList.isNotEmpty) {
                    return ListView.builder(
                      itemCount: chatListController.memberChatList.length,
                      itemBuilder: (context, index) {
                        var chat = chatListController.memberChatList[index];

                        if (chat.media.mediaType == null) {
                          return SizedBox(
                            width: _width * 0.65,
                            child: TextMessageWidget(
                              forUser: chat.fromUser,
                              text: chat.messageText,
                              time: chat.createdAt,
                            ),
                          );
                        } else {
                          if (chat.media.mediaType == 'image') {
                            return ImageMessageWidget(
                              time: chat.createdAt,
                              forUser: chat.fromUser,
                            );
                          } else
                            return SizedBox();
                        }
                      },
                    );
                  }
                  return Container();
                }),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
              child: Divider(
                color: Colors.grey[400],
                thickness: 1.5,
              ),
            ),
            CreateMeassageArea(
              controller: _controller,
            ),
          ],
        ));
  }
}

// ignore: must_be_immutable
class CreateMeassageArea extends StatefulWidget {
  CreateMeassageArea({
    Key key,
    @required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;

  @override
  _CreateMeassageAreaState createState() => _CreateMeassageAreaState();
}

class _CreateMeassageAreaState extends State<CreateMeassageArea> {
  bool textEntered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.add_circle_outline,
              color: Colors.grey[400],
            ),
          ),
          if (!textEntered) ...[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                Icons.photo_camera_outlined,
                color: Colors.grey[400],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                EvaIcons.imageOutline,
                color: Colors.grey[400],
              ),
            ),
          ],
          Expanded(
            child: TextFormField(
              controller: widget._controller,
              // maxLines: 1,
              onChanged: (val) {
                setState(() {
                  textEntered = val.isNotEmpty;
                });
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10.0, right: 2.0),
                isDense: true,
                fillColor: Colors.grey[200],
                focusColor: HexColor('32CD32').withOpacity(0.5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.grey[300],
                    // width: 0.1,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.edit_outlined,
                  size: 20.0,
                ),
              ),
            ),
          ),
          if (!textEntered) ...[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                EvaIcons.micOutline,
                color: Colors.grey[400],
              ),
            ),
          ] else ...[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                Icons.send,
                color: HexColor('32CD32'),
              ),
            ),
          ]
        ],
      ),
    );
  }
}

class TextMessageWidget extends StatelessWidget {
  final bool forUser;
  final String text;
  final String time;
  const TextMessageWidget({
    Key key,
    this.forUser,
    this.text,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment:
            forUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 12.0,
              bottom: 5.0,
            ),
            // margin: EdgeInsets.only(bottom: 2.5),
            decoration: BoxDecoration(
              color: forUser
                  ? HexColor('32CD32').withOpacity(0.4)
                  : Colors.grey[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomLeft:
                    forUser ? Radius.circular(15.0) : Radius.circular(0.0),
                bottomRight:
                    forUser ? Radius.circular(0.0) : Radius.circular(15.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 12.5,
                          color: Colors.grey[600],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 6.0),
                  child: Text(
                    time,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 10.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageMessageWidget extends StatelessWidget {
  final bool forUser;
  final String source;
  final String time;
  const ImageMessageWidget({
    Key key,
    this.forUser,
    this.source,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment:
            forUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 12.0,
              bottom: 5.0,
            ),
            // margin: EdgeInsets.only(bottom: 2.5),
            decoration: BoxDecoration(
              color: forUser
                  ? HexColor('32CD32').withOpacity(0.4)
                  : Colors.grey[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomLeft:
                    forUser ? Radius.circular(15.0) : Radius.circular(0.0),
                bottomRight:
                    forUser ? Radius.circular(0.0) : Radius.circular(15.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(3.0),
                  child: Image.asset(
                    source ?? "assets/avatar/avatar1.jpg",
                    height: _height * 0.15,
                    width: _width * 0.3,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6.0),
                  child: Text(
                    time,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 9.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

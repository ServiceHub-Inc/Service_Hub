import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/MessagesPage/chatDetailPage.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatDetailPage(),
                  ),
                );
              },
              child: Container(
                  height: 100,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // circle iamge her
                        Row(
                          children: [
                            Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                backgroundImage:
                                    AssetImage('assets/avatar/avatar1.jpg'),
                                radius: 30,
                              ),
                            ),

                            SizedBox(width: 20),
                            // name, rating etc
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Title
                                    Container(
                                      width: width * 0.4,
                                      child: Text(
                                        'Ameri Gurui Adeyi',
                                        style: GoogleFonts.oxygen(
                                            color: HexColor('44493D'),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    // sub title
                                    Container(
                                      width: width * 0.5,
                                      child: AutoSizeText(
                                        'Thank you for letting me do your Job',
                                        style: GoogleFonts.oxygen(
                                          color: HexColor('6E798C'),
                                          fontSize: 13,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    // online or not
                                    Container(
                                      height: 20,
                                      width: 50,
                                      // ignore: missing_required_param
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Online',
                                            style: GoogleFonts.oxygen(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: HexColor('32CD32')
                                              .withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),

                                    SizedBox(
                                      height: 3,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                // No of service
                                Text(
                                  '3:34 PM',
                                  style: GoogleFonts.oxygen(
                                    color: HexColor('6E798C'),
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CircleAvatar(
                                  radius: 13,
                                  backgroundColor:
                                      HexColor('32CD32').withOpacity(0.5),
                                  child: Text(
                                    '3',
                                    style: GoogleFonts.oxygen(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          );
        });
  }
}

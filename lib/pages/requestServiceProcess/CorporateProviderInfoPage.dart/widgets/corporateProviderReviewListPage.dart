import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:servicehub/pages/requestServiceProcess/CorporateProviderInfoPage.dart/widgets/reviewTileCorporate.dart';

class CorporateProviderReviewListPage extends StatelessWidget {
  // build list function

  List _buildList(int count) {
    List<Widget> listItems = [];
    for (int i = 0; i < count; i++) {
      listItems.add(ReviewTileCorporate());
    }
    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: HexColor('32CD32'),
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/serviceImages/person1.jpg',
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            elevation: 0,
            floating: true,
            title: Text(
              'Zack Driving Service',
              style: GoogleFonts.oxygen(
                fontSize: 18,
                color: Colors.white,
              ), // 5F5F65
            ),
            actions: [],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Overall Review',
                    style: GoogleFonts.oxygen(
                        fontSize: 14, color: HexColor('5F5F65')),
                  ),
                  Row(
                    children: [
                      Icon(
                        EvaIcons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '4.5',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(_buildList(20)),
          )
        ],
      ),
    );
  }
}

// ListTile(
//   onTap: (){
//     //
//   },
//   leading: CircleAvatar(
//     // backgroundImage: AssetImage(
//     //  'assets/images/image.jpg',
//     // ),
//   ),
//   title: Text(
//     'Card ${i.toString()}'
//   ),
//   subtitle: Text('this is card number ${i.toString()}'),
// )

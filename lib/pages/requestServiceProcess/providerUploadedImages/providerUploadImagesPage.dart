import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ProviderUploadedImagesPage extends StatelessWidget {
  const ProviderUploadedImagesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E5E5E5'),
      appBar: AppBar(
        backgroundColor: HexColor('32CD32'),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          'Ameri Gurui Adeyi',
          style: GoogleFonts.oxygen(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          // header info
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Uploaded Pictures',
                    style: GoogleFonts.oxygen(
                        fontSize: 18,
                        color: HexColor('44493D'),
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        'Photos',
                        style: GoogleFonts.oxygen(
                          fontSize: 14,
                          color: HexColor('B8B3B3'),
                        ),
                      ),
                      Text('(10)',
                          style: GoogleFonts.oxygen(
                            fontSize: 14,
                            color: HexColor('32CD32'),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // Grid view of yploaded images
          Expanded(
            child: Container(
              color: Colors.white,
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/serviceImages/security.jpg'))),
                  );
                },
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 2 : 1),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

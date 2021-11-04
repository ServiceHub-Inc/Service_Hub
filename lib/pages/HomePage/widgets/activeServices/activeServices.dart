import 'package:flutter/material.dart';
import 'widgets/activeListItem.dart';

class ActiveServices extends StatelessWidget {
  const ActiveServices({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 2) {
            return ActiveListItem(isEmpty: true);
          } else {
            return ActiveListItem(isEmpty: false);
          }
        },
      ),
    );
  }
}

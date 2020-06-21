import 'package:flutter/material.dart';

import '../constants.dart';

class PillsCards extends StatelessWidget {
  final String pills;

  const PillsCards({Key key, this.pills}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: kDefaultPadding),
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 4, // 5 padding top and bottom
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          pills,
          style: TextStyle(color: kTextColor.withOpacity(0.8), fontSize: 16),
        ),
      ),
    );
  }
}

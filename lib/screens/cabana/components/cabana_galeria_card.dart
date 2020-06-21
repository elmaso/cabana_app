import 'package:flutter/material.dart';

import '../../../constants.dart';

class GaleriaCard extends StatelessWidget {
  final Map image;

  const GaleriaCard({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [kDefaultShadow],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(kImagePath + image['image']),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            image['caption'],
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(color: kTextColorSecondary),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

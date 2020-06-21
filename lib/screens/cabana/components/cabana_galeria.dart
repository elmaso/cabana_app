import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'cabana_galeria_card.dart';

class CabanaGallery extends StatelessWidget {
  final List galeria;

  const CabanaGallery({this.galeria});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Galeria ",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: galeria.length,
              itemBuilder: (context, index) => GaleriaCard(
                image: galeria[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

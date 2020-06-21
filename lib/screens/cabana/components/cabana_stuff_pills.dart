import 'package:cabanaapp/components/pills_card.dart';
import 'package:cabanaapp/models/cabana.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CabanaStuffPills extends StatelessWidget {
  const CabanaStuffPills({
    Key key,
    @required this.cabana,
  }) : super(key: key);

  final Cabana cabana;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cabana.cuartosStuff.length,
          itemBuilder: (context, index) =>
              PillsCards(pills: cabana.cuartosStuff[index]),
        ),
      ),
    );
  }
}

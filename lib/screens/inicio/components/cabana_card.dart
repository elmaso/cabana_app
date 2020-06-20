import 'package:cabanaapp/models/cabana.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CabanaCard extends StatelessWidget {
  final Cabana cabana;
  const CabanaCard({this.cabana});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [kDefaultShadow],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(kImagePath + cabana.topFoto),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(
              cabana.nombreCab,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}

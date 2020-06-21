import 'package:cabanaapp/models/cabana.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../../constants.dart';

class TopCabana extends StatelessWidget {
  const TopCabana({
    Key key,
    @required this.size,
    @required this.cabana,
  }) : super(key: key);

  final Size size;
  final Cabana cabana;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.45,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(kImagePath + cabana.topFoto)),
            ),
          ),
          Positioned(
            bottom: 10,
            right: kDefaultPadding,
            child: Text(
              cabana.nombreCab,
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            bottom: size.height * 4,
            child: Image.asset(
              "assets/images/cab1_plano.png",
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(child: BackButton()),
        ],
      ),
    );
  }
}

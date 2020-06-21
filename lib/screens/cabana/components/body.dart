import 'package:cabanaapp/constants.dart';
import 'package:cabanaapp/models/cabana.dart';
import 'package:cabanaapp/screens/cabana/components/top_cababa.dart';
import 'package:flutter/material.dart';

import 'cabana_galeria.dart';
import 'cabana_info.dart';
import 'cabana_stuff_pills.dart';

class Body extends StatelessWidget {
  final Cabana cabana;

  const Body({Key key, this.cabana}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // para adaptar en base al dispositivo
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TopCabana(size: size, cabana: cabana),
          CabanaInfoRent(cabana: cabana),
          CabanaStuffPills(cabana: cabana),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Detalle información:",
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  cabana.descripcion,
                  style: TextStyle(color: kTextColorSecondary),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                SizedBox(
                  height: 220,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(kImagePath + cabana.plano),
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
              ],
            ),
          ),
          CabanaGallery(
            galeria: cabana.galeria,
          ),
        ],
      ),
    );
  }
}

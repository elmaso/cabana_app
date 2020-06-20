import 'package:cabanaapp/constants.dart';
import 'package:flutter/material.dart';

import 'cabana_carrusel.dart';
import 'menus.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // habilita scroll para cels chicos
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          MenuList(),
          SizedBox(
            height: kDefaultPadding,
          ),
          CabanaCarousel(),
        ],
      ),
    );
  }
}

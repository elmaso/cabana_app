import 'package:cabanaapp/models/cabana.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class CabanaDetails extends StatelessWidget {
  final Cabana cabana;

  const CabanaDetails({Key key, this.cabana}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        cabana: cabana,
      ),
    );
  }
}

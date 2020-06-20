import 'package:cabanaapp/constants.dart';
import 'package:cabanaapp/screens/inicio/components/body.dart';
import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding * .5),
        icon: Image.asset("$kImagePath/logo_sec.png"),
        onPressed: () {},
      ),
    );
  }
}

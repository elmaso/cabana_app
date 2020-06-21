import 'package:cabanaapp/models/cabana.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CabanaInfoRent extends StatelessWidget {
  const CabanaInfoRent({
    Key key,
    @required this.cabana,
  }) : super(key: key);

  final Cabana cabana;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${cabana.nombreCab} \$${cabana.costoNoche}',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Ocupación ${cabana.maxHuesped}',
                      style: TextStyle(color: kTextColorSecondary),
                    ),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(
                      'Recámaras ${cabana.cuartos}',
                      style: TextStyle(color: kTextColorSecondary),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: FlatButton(
              onPressed: () {},
              color: kSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

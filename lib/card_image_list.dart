import 'package:flutter/material.dart';
//Importamos la clase del archivo card_image
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal, //Horizontal
        children: <Widget>[
          CardImage("assets/img/paisaje_1.jpg"),
          CardImage("assets/img/paisaje_2.jpg"),
          CardImage("assets/img/paisaje_3.jpg"),
          CardImage("assets/img/paisaje_4.jpg"),
        ],
      ),
    );
  }
}

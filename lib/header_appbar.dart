import 'package:flutter/material.dart';
//Importamos el gradiente
import 'gradient_back.dart';
//Importamos la carrilla de imagenes
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      //Para acomodar un elemento sobre otro
      children: <Widget>[
        GradientBack("Bienvenido"), //Gradiente
        CardImageList() //Carrilla de imagenes
      ],
    );
  }
}

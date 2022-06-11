import 'package:flutter/material.dart';

//Importamos la clase del archivo floating_action_button_green
import 'floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  //variable con datos por defecto
  String pathImage = "assets/img/paisaje_1.jpg";
//Constructor
  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      //Contenedor
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(
          //Margen
          top: 50.0,
          left: 50.0),
      decoration: BoxDecoration(
          //Decoracion
          image: DecorationImage(
              //Imagen
              fit: BoxFit.cover,
              image: AssetImage(pathImage) //Imagen
              ), //
          borderRadius: BorderRadius.all(//borde redondo
              Radius.circular(10.0)),
          shape: BoxShape.rectangle, //Imagen rectangular
          boxShadow: <BoxShadow>[
            BoxShadow(
                //Para que la sombra tenga un estilo
                color: Colors.black38,
                blurRadius: 15.0, //Decradado
                offset: Offset(0.0, 7.0) //La posicion de la sombra en X y Y
                )
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.0),
      children: <Widget>[card, FloatingActionButtonGreen()],
    );
  }
}

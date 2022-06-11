import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = "Popular";

  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //En un contenedor
      height: 250.0, //Altura
      decoration: BoxDecoration(
          //Decoracion
          gradient: LinearGradient(
              //Una línea para degradar
              colors: [
                Color(0xFF4268D3), //Color 1
                Color(0xFF584CD1) //Color 2
              ],
              //La orientacion de la gradiente
              begin: FractionalOffset(0.2, 0.0),
              //Hasta donde llega el color mas oscuro
              end: FractionalOffset(1.0, 0.6),
              //Donde va estar la orientacion de la gradiente
              stops: [0.0, 0.6],
              //color de relleno si no recarga la gradiente.
              tileMode: TileMode.clamp)),

      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
      //Alineación con respecto al contenedor
      alignment: Alignment(-0.9, -0.8),
    );
  }
}

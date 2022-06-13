//Importamos el paquete de material
import 'package:flutter/material.dart';

import '../../../widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  // Creamos variables para que sea más manejable al momento de conectarse con api
  String namePlace;
  int stars;
  String descriptionPlace;

  // Creamos un constructor para estas variables
  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //Para que las estrellas esten a la mitad
    final star_half = Container(
      margin: EdgeInsets.only(top: 353.0, right: 3.0),
      child: Icon(
        Icons.star_half, //La estrella es diferente una que esta a la mitad
        color: Color(0xFFf2C611),
      ),
    );

    //Estrella borde
    final star_border = Container(
      margin: EdgeInsets.only(top: 353.0, right: 3.0),
      child: Icon(
        Icons.star_border, //Icono de estrella borde
        color: Color(0xFFf2C611),
      ),
    );

    //Creamos la variable para las estrellas
    final star = Container(
      //Con su contenedor
      margin: EdgeInsets.only(
          //Margen
          top: 353.0, //Margen de arriba un poco más, para que este centrada
          right: 3.0 // Con un espacio a la derecha de 3
          ),
      child: Icon(
        //Creamos el icono
        Icons.star, //Icono estrella
        color: Color(0xFFf2C611), //De color hexagecimal
      ),
    );

    //Creamos la variable para el nombre de la persona
    final title_stars = Row(
      //Usamos el row ya que vamos a juntar después con la variable estrella
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 350.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace, //Se cambia el string por una variable
            style: TextStyle(
                fontFamily: "Lato", //Tipografia
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star, star_half],
        )
      ],
    );

    final description = Container(
      margin: new EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: new Text(
        descriptionPlace, //Variable
        style: const TextStyle(
            fontFamily: "Lato", //Tipografia
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    //Se retorna la variable title_stars, que contiene todo un row.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_stars, description, ButtonPurple("Navegador")],
    );
  }
}

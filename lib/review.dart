import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  //Variable para el path de la imagen
  String pathImage = "asset/img/people.jpg";
  //Variables
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

//Constructor
  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
          // Margen
          left: 20.0),
      child: Text(
        name, //Variable
        textAlign: TextAlign.left, //Alineacion a la izquierda,
        style: TextStyle(
            fontFamily: "Lato", //Tipo de texto
            fontSize: 17.0 //Tamaño de texto
            ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    //Una variable
    final photo = Container(
      //Margenes
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      //Tamaño
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle, //Para que sea circulo
          image: DecorationImage(
              //Resive la imagen que va mostrar
              fit: BoxFit.cover, //posicion, para que encuentre al centro.
              image: AssetImage(pathImage))),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}

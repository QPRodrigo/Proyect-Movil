//Importamos el material dart
import 'package:flutter/material.dart';

//Importamos los archivos
import 'description_place.dart';
import 'header_appbar.dart';
import 'review_list.dart';

class HomeTrips extends StatelessWidget {
  String descriptionDummy =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      //Pila
      children: <Widget>[
        ListView(
          children: <Widget>[
            //Descripcion
            DescriptionPlace("Bahamas", 4, descriptionDummy),
            ReviewList() //Revio
          ],
        ),
        HeaderAppBar() //Header
      ],
    );
  }
}

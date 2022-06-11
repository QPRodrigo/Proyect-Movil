import 'package:flutter/material.dart';
//Importamos el archivo review
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //Retornamos la columna
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people_1.jpg", "Varuna Yasas", "1 review · 5 photos",
            "There is an amazing place in Sri Lanka"),
        Review("assets/img/people_2.jpg", "Anahí Salgado",
            "2 review · 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/people_3.jpg", "Gissele Thomas",
            "2 review · 2 photos", "There is an amazing place in Sri Lanka"),
      ],
    );
  }
}

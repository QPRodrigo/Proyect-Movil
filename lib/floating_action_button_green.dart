//Importamos el paquete de material
import 'package:flutter/material.dart';

//Heredamos de la clase Stateful → Con Estado
class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
    //Devolvemos la clase inferior.
  }
}

//Creamos otra clase con el mismo nombre pero con un guion abajo para que sea diferente, hereda de la otra clase.
class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  void onPressedFav() {
    //Metodo cuando se da el evento
    Scaffold.of(context).showSnackBar(//Para que de un mensaje
        SnackBar(
      content: Text("Agregaste a tus Favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      //boton
      backgroundColor: Color(0xFF11DA53), //Color de fondo
      mini: true, //Tamaño de elemento, por defecto esta falso.
      tooltip: "Fav", //es como un hover de web.
      onPressed: onPressedFav, //Evento de presionar
      child: Icon(//Hijo de iconos
          Icons.favorite_border //icono de borde
          ),
    );
  }
}

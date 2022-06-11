import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText = "Navigate"; //Variable

  //Constructor
  ButtonPurple(this.buttonText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        //Para que tenga interaccion o un evento con el botton
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Navegando"),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                //Gradiente
                colors: [
                  //Gradiente
                  Color(0xFF4268D3),
                  Color(0xFF584CD1)
                ],
                begin:
                    FractionalOffset(0.2, 0.0), //Colores se entrelasen entre si
                end: FractionalOffset(1.0, 0.6), //
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
          //Hijo para texto
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 18.0, //Tamaño
                fontFamily: "Lato", //Tipografia
                color: Colors.white //Color
                ),
          ),
        ),
      ),
    );
  }
}

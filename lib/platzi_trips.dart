import 'package:flutter/material.dart';
//Para importar clases
import 'Place/ui/screens/home_trips.dart';
import 'Place/ui/screens/search_trips.dart';
import 'User/ui/screens/profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  //Indice para acceder a los elementos
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    //Para dar una lista de metodos
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  //Metodo para dar una evento
  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //Segun el indice
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
            //Se activa la funcion
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Buscar"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Perfil"),
            ]),
      ),
    );
  }
}

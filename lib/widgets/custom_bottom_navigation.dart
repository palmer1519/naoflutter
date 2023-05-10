import 'package:flutter/material.dart';


class CustomBottomNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink.shade400,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Incio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.auto_graph_rounded),
          label: 'Reporte'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_rounded),
          label: 'Perfil'
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';


class PageTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("NAO", style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 10),
            Text("Tu inventario y punto de venta favorito", style: TextStyle(fontSize: 22, color: Colors.white))
        ]),
      ),
    );
  }
}

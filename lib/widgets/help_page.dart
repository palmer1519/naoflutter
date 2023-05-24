import 'dart:ui';

import 'package:flutter/material.dart';



class CardTableInventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(  
      children: [
        TableRow(
          children: [
            Center(child: _SigleCard(color: Colors.teal.shade300, icon: Icons.inventory_rounded, text: "Inventario")),
          ]
        ),
      ],
    );
  }
}

class CardTableSale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(  
      children: [
        TableRow(
          children: [
            Center(child: _SigleCard(color: Colors.purple .shade300, icon: Icons.sell_rounded, text: "Venta")),
          ]
        ),
      ],
    );
  }
}

class CardTableShope extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(  
      children: [
        TableRow(
          children: [
            Center(child: _SigleCard(color: Colors.blue.shade300, icon: Icons.shopping_cart_rounded, text: "Compra")),
          ]
        ),
      ],
    );
  }
}

class CardTableCreateProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(  
      children: [
        TableRow(
          children: [
            Center(child: _SigleCard(color: Colors.brown.shade300, icon: Icons.create_rounded, text: "Crear Producto")),
          ]
        ),
      ],
    );
  }
}

class CardTableCustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(  
      children: [
        TableRow(
          children: [
            Center(child: _SigleCard(color: Colors.red.shade300, icon: Icons.supervised_user_circle_rounded, text: "Clientes")),
          ]
        ),
      ],
    );
  }
}

class CardTableReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(  
      children: [
        TableRow(
          children: [
            Center(child: _SigleCard(color: Colors.cyanAccent, icon: Icons.auto_graph_rounded, text: "Reportes")),
          ]
        ),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard({
    super.key, 
    required this.icon, 
    required this.color, 
    required this.text
    });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(this.icon, size: 35, color: Colors.white, ),
                  radius: 30,
                ),
                SizedBox(height: 10,),
                Text(this.text, style: TextStyle(color: this.color, fontSize: 20),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

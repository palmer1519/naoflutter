import 'package:flutter/material.dart';
import 'package:naoflutter/widgets/background_2.dart';


class Shope extends StatelessWidget {
  const Shope({super.key});

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
          children: [
            //Background
            Background2(),

             Center(
              child: Text("Compra"))
          ],
        )
    );
  }
}

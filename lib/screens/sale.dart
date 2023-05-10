import 'package:flutter/material.dart';
import 'package:naoflutter/widgets/background.dart';


class Sale extends StatelessWidget {
  const Sale({super.key});

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
          children: [
            //Background
            Background()
          ],
        )
    );
  }
}

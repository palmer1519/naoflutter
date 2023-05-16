import 'dart:math';

import 'package:flutter/material.dart';

class Background2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8],
            colors: [Color(0xff2E305F), Color(0xff202333)]));
    return Stack(
      children: [
        //Color Gradient
        Container(decoration: boxDecoration),
      ],
    );
  }
}


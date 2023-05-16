import 'package:flutter/material.dart';


class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Image(
          image: AssetImage("assets/logo.png"),
        ));
  }
}
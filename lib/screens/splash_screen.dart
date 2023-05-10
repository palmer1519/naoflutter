import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class SplassScreen extends StatelessWidget {
  const SplassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Page1(),
          Page2(),
      ],
    ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background
        Background(),

        //Main Content
        MainContent(),
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 100,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[700],
        alignment: Alignment.center,
        child: Image(
          image: AssetImage("assets/logo.png"),
        ));
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[700],
        child: Center(
        child: TextButton(
          onPressed: () {},
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 40),
            child: Text("Bienvenido", style: TextStyle(color: Colors.white, fontSize: 40)),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.purple[900],
            shape: StadiumBorder()
          ),
        ),
      )
    );
  }
}

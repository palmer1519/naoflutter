import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:naoflutter/screens/splash_screen.dart';
import 'package:naoflutter/widgets/background_2.dart';
import 'package:naoflutter/widgets/help_page.dart';
import 'package:naoflutter/widgets/image.dart';
import 'package:naoflutter/widgets/signin_page.dart';
import 'package:naoflutter/widgets/signup_page.dart';


class Help extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(14, 25, 118, 210),
      body: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          // Scroll Screen
          Page1(),
          // Sign in
          Page2(),
          // Sign up
          Page3(),
          //
          Page4(),
          //
          Page5(),
          //
          Page6(),

        ],
    ));
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background
        _Background(),

        //Text
        Center(child: Text("PAGE1")),

        //Mchevron Right Flecha
        MainContent(),

        // Icon of inventory
        CardTableInventory(),
      ],
    );
  }
}


class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background2
          Background2(),
        ],
      ),
    ); 
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background2
        Background2(),

        //Text
        Center(child: Text("PAGE2")),

        //Mchevron Right Flecha
        MainContent(),

        //Icon of sale
        CardTableSale(),

      ],
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background2
        Background2(),

        //Text
        Center(child: Text("PAGE3")),

        //Mchevron Right Flecha
        MainContent(),

        //Icon Of Shope
        CardTableShope()
      ],
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background2
        Background2(),

        //Text
        Center(child: Text("PAGE4")),

        ////Mchevron Right Flecha
        MainContent(),

        //Icon de Create Product
        CardTableCreateProduct()

      ],
    );
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background2
        Background2(),

        //Text
        Center(child: Text("PAGE5")),

        ////Mchevron Right Flecha
        MainContent(),

        //Icon Of Customer
        CardTableCustomer()
      ],
    );
  }
}

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Background2
        Background2(),

        //Text
        Center(child: Text("PAGE6")),

        //Icon Of Report
        CardTableReport()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
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
            Icons.chevron_right_rounded,
            size: 70,
            color: Color(0xff2E305F),
          )
        ],
      ),
    );
  }
}




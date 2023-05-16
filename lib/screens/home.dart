import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:naoflutter/widgets/background.dart';
import '../widgets/card_table.dart';
import '../widgets/custom_bottom_navigation.dart';
import '../widgets/page_title.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
          children: [
            //Background
            Background(),
            //Home Body
            _HomeBody(),
          ],
        ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
           //Tittles
           PageTitle(),

           //Card Table
           CardTable(),
           
        ],
      ),
    );
  }
}

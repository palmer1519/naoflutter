import 'package:flutter/material.dart';
import 'package:naoflutter/providers/ui_provider.dart';

import 'package:naoflutter/screens/home.dart';
import 'package:naoflutter/screens/profile.dart';
import 'package:naoflutter/screens/reports.dart';
import 'package:provider/provider.dart';
import '../widgets/custom_bottom_navigation.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: _HomePageBody(),
        //bottomNavigationBar
        bottomNavigationBar: CustomBottomNavigation()
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);
    // Cambiar para mostrar la pagina respectiva 
    final currentIndex = uiProvider.selectedMenuOpt;
    switch(currentIndex){
      case 0:
        return
          Home();
      case 1:
        return 
          Reports();
      case 2:
        return
          Profile();
      default:
        return Home();
    }
  }
}


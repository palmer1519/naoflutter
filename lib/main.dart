import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:naoflutter/screens/basic_desing.dart';
import 'package:naoflutter/screens/splash_screen.dart';
import 'package:naoflutter/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'NAO',
      initialRoute: "home_screen",
      routes: {
        'basic_desing': ( _ ) => BasicDesignScreen(),
        'splass_screen': ( _ ) => SplassScreen(),
        'home_screen': ( _ ) => HomeScreen(),
      },
    );
  }
}


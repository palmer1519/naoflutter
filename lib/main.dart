import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:naoflutter/providers/ui_provider.dart';
import 'package:naoflutter/screens/basic_desing.dart';
import 'package:naoflutter/screens/splash_screen.dart';
import 'package:naoflutter/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider()),
      ],

      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        title: 'NAO',
        initialRoute: "splass_screen",
        routes: {
          'basic_desing': ( _ ) => BasicDesignScreen(),
          'splass_screen': ( _ ) => SplassScreen(),
          'home_screen': ( _ ) => HomeScreen(),
        },
      ),
    );
  }
}


import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/background_2.dart';
import '../widgets/image.dart';
import '../widgets/privacy_page.dart';
import '../widgets/signin_page.dart';
import '../widgets/signup_page.dart';
//import 'package:flutter/services.dart';

class SplassScreen extends StatelessWidget {
  const SplassScreen({super.key});  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(14, 25, 118, 210),
      body: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          // Scroll Screen
          Page1(),
          // Sign in
          Page2(),
          // Sign up
          Page3(),
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

        //Main Content
        MainContent(),

        //Buttom Privacy
        
        Center(
          child: 
          TextButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: 'NAO',
                applicationVersion: '1.0.0',
                applicationLegalese:
                    'nao.com © ${DateTime.now().year} NAO',
                applicationIcon: const FlutterLogo(),
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (context) => PrivacyPage(),
                        ),
                      );
                    },
                    child: const Text('Politica de privacidad'),
                  ),
                ],
              );
            },
            child: 
            const Text('Terminos & Privacidad'),
          ),
        )
        
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

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background2
          Background2(),
          // Image
          image(),
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
        //Sign In
        SignIn()
      ],
    );
  }
}
class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Sign Up
        SignUp()
      ],
    );
  }
}

class buttomPrivacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: TextButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: 'NAO',
                applicationVersion: '1.0.0',
                applicationLegalese:
                    'nao.com © ${DateTime.now().year} NAO',
                applicationIcon: const FlutterLogo(),
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (context) => PrivacyPage(),
                        ),
                      );
                    },
                    child: const Text('Politicva de privacidad'),
                  ),
                ],
              );
            },
            child: const Text('Terminos & Privacidad'),
                  ),
          )

        ],
      ),
    ); 
  }
}
 
/* 
class _Buttom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 40),
            child: Text("Continuar", style: TextStyle(color: Colors.white, fontSize: 40)),
          ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff2E305F),
              shape: StadiumBorder()
          ),
        ),
      )
    );
  }
} 

 */
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:naoflutter/screens/home_screen.dart';
import 'package:naoflutter/widgets/sign_in_reusable.dart';



class SignIn extends StatelessWidget {

  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
             begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8],
            colors: [Color(0xff2E305F), Color(0xff202333)]
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height *0.1, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/logo.png"),
                SizedBox(
                  height: 70,
                ),
                reusableTextField("Ingresar Usuario", Icons.person_2_rounded, false, _email),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Ingresar contraseña", Icons.lock_clock_rounded, true, _password),
                SizedBox(
                  height: 20,
                ),
                
                signInSignUpButtom(context, true, (){
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _email.text, 
                    password: _password.text).
                    then((value){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));  
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                  
                }),
                singUpOption(),
                SizedBox(
                  height: 10,
                ),
                swipe()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Row singUpOption(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const 
      Text("¿No tienes cuenta?", style: TextStyle(color: Colors.white70)),
      Text(" Crea cuenta nueva", 
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
      )
    ],
  );
}
Row swipe(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const 
      Text("Sigue deslizando", style: TextStyle(color: Colors.white70)),
    ],
  );
}
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:naoflutter/screens/home_screen.dart';
import 'package:naoflutter/widgets/sign_in_reusable.dart';
class SignUp extends StatelessWidget {

  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _user = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Registrate",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(

                  height: 20,
                ),
                reusableTextField("Ingresa un nombre", Icons.person_2_rounded, false, _user),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Ingresa un correo elctronico", Icons.mail_rounded, false, _email),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Ingresa una contraseña", Icons.lock_outline_rounded, false, _password),
                const SizedBox(
                  height: 20,
                ),
                signInSignUpButtom(context, false, (){
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: _email.text, 
                    password: _password.text).then((value) {
                      print("Cuenta creada con exito");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                })
              ],
            ),
            ))),
    );
  }
}

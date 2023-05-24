
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:naoflutter/screens/home_screen.dart';
import 'package:naoflutter/widgets/privacy_page.dart';
import 'package:naoflutter/widgets/sign_in_reusable.dart';

class SignUp extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

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
                colors: [Color(0xff2E305F), Color(0xff202333)]),
          ),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Ingresa un nombre", Icons.person_2_rounded, false, _user),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Ingresa un correo elctronico",
                    Icons.mail_rounded, false, _email),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Ingresa una contraseña",
                    Icons.lock_outline_rounded, false, _password),
                const SizedBox(
                  height: 10,
                ),
                    _btnPrivacidad(),
                const SizedBox(
                  height: 10,
                ),
                signInSignUpButtom(context, false, () { 
                  try {
                    _auth
                        .createUserWithEmailAndPassword(
                            email: _email.text.trim().toLowerCase(),
                            password: _password.text.trim())
                        .then((value) {
                      print("Cuenta creada con exito");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    });
                    final User? user = _auth.currentUser;
                    final _uid = user!.uid;
                    FirebaseFirestore.instance
                        .collection('Usuarios')
                        .doc(_uid)
                        .set({
                      'id': _uid,
                      'name': _user.text,
                      'email': _email.text,
                      'createAt': Timestamp.now(),
                    });
                    Navigator.canPop(context) ? Navigator.pop(context) : null;
                  } catch (error) {
                    Fluttertoast.showToast(msg: error.toString());
                  }
                })
              ],
            ),
          ))),
    );
  }
}
// Validate privacy button 
class _btnPrivacidad extends StatelessWidget {
  get onChanged => null;
  get value => false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: TextButton(
        onPressed: (){
          showAboutDialog(
            context: context,
            applicationName: 'NAO',
            applicationVersion: '1.0.0',
            applicationLegalese: 'nao.com © ${DateTime.now().year} NAO',
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
        child: const Text('Terminos & Privacidad')),
        
      value: value,
      onChanged: onChanged);
  } 
}

/*
class btnTerminos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          showAboutDialog(
            context: context,
            applicationName: 'NAO',
            applicationVersion: '1.0.0',
            applicationLegalese: 'nao.com © ${DateTime.now().year} NAO',
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
        child: const Text('Terminos & Privacidad'),
      ),
      
    );
  }
}*/



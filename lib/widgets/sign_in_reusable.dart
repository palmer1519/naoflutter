//import 'dart:ffi';

import 'package:flutter/material.dart';

Image logoWidget(String imageName){
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 270,
  );
}

TextFormField reusableTextField (String text, IconData icon, bool isPassWordType,
  TextEditingController controller){
  final TextEditingController _email = TextEditingController();
    return TextFormField(
      controller: controller,
      obscureText: isPassWordType,
      enableSuggestions: !isPassWordType,
      validator: (value) {
          if (value!.isEmpty) {
            return ("Debe ingresar un email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Debe ingresar un email válido");
          }
          return null;
        },
        onSaved: (value) {
          _email.text = value!;
        },
      autocorrect: !isPassWordType,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: (Colors.white70),
        ),

        labelText: text,
        labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
      ),
      keyboardType: isPassWordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress
    );
  }

Container signInSignUpButtom(
  BuildContext context, bool isLogin, Function onTap){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: (){
          onTap();
        }, 
        child: Text(
          isLogin ? 'Iniciar sesión' : 'Crea cuenta nueva',
          style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        style:  ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states){
            if (states.contains(MaterialState.pressed)){
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
          )
        ),
      ),
    );
  }

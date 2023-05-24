import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:naoflutter/providers/products_model.dart';
import 'package:naoflutter/screens/home_screen.dart';
class CreateProduct extends StatelessWidget {


  TextEditingController idProduct = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController purchasePrice = TextEditingController();
  TextEditingController salesPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Agregar producto",
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
                reusableTextFields("Id del producto", Icons.qr_code_2_rounded,  idProduct),
                const SizedBox(
                  height: 20,
                ),
                reusableTextFields("Nombre del producto", Icons.app_registration_sharp,  name),
                const SizedBox(
                  height: 20,
                ),
                reusableTextFields("Cantidad", Icons.assignment_turned_in_rounded, amount),
                const SizedBox(
                  height: 20,
                ),
                reusableTextFields("Precio de compra", Icons.currency_exchange_outlined, purchasePrice),
                const SizedBox(
                  height: 20,
                ),
                reusableTextFields("Precio de venta", Icons.point_of_sale_sharp,  salesPrice),
                const SizedBox(
                  height: 20,
                ),
                AddButtom(context, false, () async{
                    await addProductos(idProduct.text, name.text, amount.text, purchasePrice.text, salesPrice.text).then((value){});
                })
              ],
            ),
            ))),
    );
  }
}

TextField reusableTextFields (String text, IconData icon,
  TextEditingController controller){
    return TextField(
      controller: controller,
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
    );
    
  }

Container AddButtom(
  BuildContext context, bool isLogin, Function onTap,){

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: ElevatedButton(
        onPressed: (){
          onTap();  
        },
        child: Text('Guardar',
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

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<void> addProductos(String idProduct, String name, String amount, String purchasePrice, String salesPrice) async{
  await  db.collection("Productos").add({
    'idProducto': idProduct,
    'nombre': name,
    'cantidad': amount,
    'compra': purchasePrice,
    'venta': salesPrice,
    'createAt': Timestamp.now(),
    });

}


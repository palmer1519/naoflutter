import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? uid;
  String? email;
  String? nombre;
  String? createAt;

  UserModel({this.uid, this.email, this.nombre, this.createAt});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['Correo'],
      nombre: map['nombre'],
      createAt: map['createAt'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'apellido': nombre,
      'createAt': Timestamp.now(),
    };
  }
}
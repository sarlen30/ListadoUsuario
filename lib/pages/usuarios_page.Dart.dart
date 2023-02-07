import 'package:examenejercicio2/models/Usuarios.dart';
import 'package:flutter/material.dart';
class UsuariosPage extends StatelessWidget {
  final Usuarios usuario;
  const UsuariosPage({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Informacion'),),
      body:Center(
        child: Card(
          margin: EdgeInsets.only (left:200.0, top:300.0,right:200.0,bottom:200.0),
        elevation: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(image: NetworkImage(usuario.avatar!),),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(usuario.firstName!),
                  Text(usuario.lastName!),
                  Text(usuario.email! ),
                ],
              ),
            ],),),),);
  }
}

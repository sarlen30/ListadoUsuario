import 'package:examenejercicio2/models/Usuarios.dart';
import 'package:examenejercicio2/pages/usuarios_page.Dart.dart';
import 'package:examenejercicio2/provider/provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
final UsuarioService service = UsuarioService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Usuarios'),
      ),

      body: FutureBuilder(
          future: service.getUsuarios(),
          builder: (context, snapshot){
            if(snapshot.hasError){
              return const Text('Error');
            }
            else if(snapshot.hasData){
              List<Usuarios> usuarios = snapshot.data!;
              return ListView.builder(
                  itemCount: usuarios.length,
                  itemBuilder: (context, int i){
                    return ListTile(
                      onTap: (){

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>
                            UsuariosPage(usuario: usuarios[i])
                            ));
                      },
                      title: Text(usuarios[i].firstName!),
                      subtitle: Text(usuarios[i].lastName!),
                    );
                  }
              );
            }
            return  CircularProgressIndicator();
          }
      ),
    );
  }
}



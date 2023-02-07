import'dart:convert';
import 'package:examenejercicio2/models/Usuarios.dart';
import 'package:http/http.dart';

class UsuarioService {

  Future<List<Usuarios>> getUsuarios() async {

    Response res = await get(Uri.parse('https://reqres.in/api/users'));

    if(res.statusCode == 200){
      List<dynamic> lista = json.decode(res.body)['data'];

      List<Usuarios>usuarios =

      lista.map((item) => Usuarios.fromJson(item)).toList();
      return usuarios;

    }else{

      throw Exception('Fallo');

    }}}

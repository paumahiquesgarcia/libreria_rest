// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:libreria_rest/api_client.dart';
import 'package:libreria_rest/dao/usuariodao.dart';
import 'package:libreria_rest/models/usuario.dart';
import 'package:libreria_rest/models/alimento.dart';
import 'package:libreria_rest/models/ejercicio.dart';
import 'package:libreria_rest/models/medida.dart';
import 'package:libreria_rest/models/diariorutina.dart';
import 'package:libreria_rest/models/diarioalimentacion.dart';
import 'package:libreria_rest/models/alergeno.dart';
import 'package:libreria_rest/models/ejerciciosimagen.dart';
import 'package:libreria_rest/models/objetivos.dart';
import 'package:libreria_rest/models/tiporutina.dart';
import 'package:libreria_rest/relacion/alimentoalergeno.dart';
import 'package:libreria_rest/relacion/tiporutinaejercicios.dart';
import 'package:libreria_rest/relacion/comidasalimento.dart';
import 'main.reflectable.dart';

void main() {
  initializeReflectable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('API POST Example')),
        body: const PostExample(),
      ),
    );
  }
}

class PostExample extends StatefulWidget {
  const PostExample({super.key});

  @override
  _PostExampleState createState() => _PostExampleState();
}

class _PostExampleState extends State<PostExample> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ElevatedButton(
        onPressed: prueba,
        child: Text('Send Data'),
      ),
    );
  }
}

void prueba() {
  try {
    Usuario user = Usuario(
      id: 1,
      nombre: "alfonso",
      email: "email",
      password: "password",
      objetivo: "objetivo",
      altura: 2,
      peso: 3,
      fechaNacimiento: DateTime.now(),
      dateCreated: DateTime.now(),
      dateModified: DateTime.now(),
    );

    UsuarioDao userdao = UsuarioDao(user);

    print(userdao);
  } catch (e) {
    print(e);
  }
}

class Postejemplo extends ApiClient {
  void sendData() async {
    try {
      // Datos a enviar en la solicitud POST
      Map<String, dynamic> data = {
        "clientId": "zQG5mIgRgLkbgZsnOcjg",
        "columnas": {"centro": 24},
        "funcion": "getListPaginasCustom"
      };
      String url = '/ws/productos/wsRest.php';

      // Realizar una solicitud POST
      final responseData = await getResponseData(url, data);

      // Procesar y utilizar la respuesta

      for (var element in responseData) {
        print(element);
      }
      print(responseData);
    } catch (e) {
      print('Error: $e');
    }
  }
}

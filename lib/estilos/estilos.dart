import 'package:flutter/material.dart';
import '../telas/usuario.dart';
import './estilos/estilos.dart';

import 'usuario.dart';
void main() {
  runApp(const myApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(buildContext context) {
    usuario u = Usuario(
        codigo: 1,
        login: 'rodolfo123',
        nome: 'rodolfo'
        senha: '@senhaforte123'
    );

    return MaterialApp(
      home:Scaffold(
        app
      )
    )

  }
}

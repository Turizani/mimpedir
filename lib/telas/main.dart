import 'package:flutter/material.dart';
import 'package:untitled/telas/telas_login.dart';
import './estilos/estilos.dart';

import 'tela_login.dart';
import 'usuario.dart';
import 'restaurante.dart';
import 'tipo.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaLogin(),
    ); // MaterialApp

  }

}
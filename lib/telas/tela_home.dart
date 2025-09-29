import 'package:flutter/material.dart';


class TelaHome extends StatelessWidget {
  TelaHome({super.Key});

  @override
  Widget build(buildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela de Home')),
      body: const Center(
        child: Text("OIII seja bem vindo!"),
      ), // center
    ); // Scaffold
  }
}

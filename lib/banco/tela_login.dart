import 'package:flutter/material.dart';
import 'package:untitled/banco/usuario_dao.dart';
import 'package:untitled/telas/tela_home.dart';
import 'package:untitled/usuario.dart';

class TelaLogin extends StatelessWidget{
  TelaLogin({super.key});

  /*Usuario u = Usuario(
  nome: 'admin',
  login : 'admin',
  senha: '1234'
   );*/

  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(buildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tela de login: ')),
        body: Padding(padding: const EdgeInsets.all(24.0),
          child: Column(
              mainAxisAlignmente: mainAxisAlignmente.center,
              children: [
          TextField(
          decoration: const InputDecoration(labelText: 'Usuario'),
          controller: usuarioController,
        ),// textField
        const SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(labelText: 'Senha'),
          obscureText: true,
          controller:senhaController,
        ), // TextField
        const SizedBox(height: 20),
        ElevatedButton(onPressed: () async {
          ]
          )
        }
            }
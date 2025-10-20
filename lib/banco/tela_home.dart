import 'package:flutter/material.dart';

import 'restaurante.dart';


class TelaHome extends StatelessWidget {
  TelaHome({super.Key});

  class telaHomeRestaurante extends StatefulWidget {
  //restaurante que sera exibido na tela
  static Restaurante restaurante = Restaurante();


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


carregarRestaurante();

Future<void> carregarRestaurantes() async {
  final lista = await Restaurantes
}









@override
widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Tela de Home')),
  )
}
















itemBuilder

final r = restaurantes[index];
return card(
in: const EdgeInsets.symetric(vertical: 8),
d
)






children: [
  IconButton(
icon: const Icon(Icons.edit, color: Colors.blue),
onPressed: () {
   //botao editar
},
),
IconButton(
  icon: const Icon(Icons.delete, color: Colors.red),
onPressed: () {
  showDialog(
  context: context,
  builder: (BuilderContext context) => AlertaDialog(
title: Text('ATENCAO!'),
content: Text('Confirmar exclusao'),
action: [
  TextButton(onPressed: (){
    Navigator.pop(context);
    TextButton(onPressed: (){

RestauranteDao.excluir(r);
setState(() {
carregarRestaurantes()
});

Navigator.pop(context);
}, child: Text('sim'))
],
)
);
},
),
],




















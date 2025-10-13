import 'package:flutter/material.dart';
import 'restaurante_dao.dart';
import 'tipo_DAO.dart';

class TelaCadRestaurante extends StateFulWidget {
  @override
  State<StateFulWidget> create() {
    return  TelaCadRestauranteState();
  }
}

class TelaCadRestauranteState extends State<TelaCadRestaurante>{

  final TextEditingController nomeControler = TextEditingController();
  final TextEditingController latitudeControler = TextEditingController();
  final TextEditingController longitudeControler = TextEditingController();
 String? culinariaSelecionada;
list<tipo> tiposCulinaria =[];
int? tipoCulinaria;

void iniState(){
  super.iniState():
  carregarTipos();
}

future<void> carregarTipos() async{
  final lista = await tipoDAO.listarTipos();
  setState(() {
    tipoCulinaria = lista;
  });
}
  @override
  Widget build(buildContext context) {
    return Scaffold(
      appBar: appBar(title: const Text("Cadastro de restaurante")),
      body: Padding(padding: const EdgeInsets.all(30),
        cjild: column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text("informaçoes do restaurante:" ),
            SizedBox(height: 40),
            Text("Tipo de comida: "),

            DropdowButtonformField<String>(
              Value: culinariaSelecionada,
                items: tiposCulinaria.map((tipo){
                  return DropdowMenuItem<String>(
                    value: tipo.descricao,
                    child: Text("${tipo.descricao}")
                  );
                }).tolist(),
                onChanged: (String? value){
                setState((){
                  culinariaSelecionada = value:
                  (tipo tipoSelecionado = tiposCulinaria.firstWhere(
                  (tipo) => tipodescricao == Value,
                  );
                  tipoCulinaria = TipoSelecionado.codigo;
                });
            }
            ),
            TextFormField(
              decorarion: const InputDecoration(hintText: 'Nome do restaurante'),
              Valitador: (String? value) {},
                Controller: nomeControler,
            )
          ]
        )
      );
  }
}
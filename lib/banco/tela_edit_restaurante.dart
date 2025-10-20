import 'restaurante.dart';
import 'restaurante.dart;
import 'tipo.dart';
import 'tipo_DAO.dart';
import 'restaurante_dao.dart';

class TelaEditRestaurante extends StateFulWidget {
  //restaurante que sera exibido na tela
  static Restaurante restaurante = Restaurante();

  @override
  State<StateFulWidget> createState() {
    return TelaEditRestauranteState();
  }
}

class TelaEditRestauranteState extends State<TelaEditRestaurante>{

  final TextEditingController cdControler = TextEditingController();
  final TextEditingController nomeControler = TextEditingController();
  final TextEditingController latitudeControler = TextEditingController();
  final TextEditingController longitudeControler = TextEditingController();


  String? culinariaSelecionada;
  List<Tipo> tiposCulinaria = [];
  Int? tipoCulinaria;
  int? codigo = TelaEditRestaurante.restaurante.codigo as Int;


  void iniState(){
    super.iniState():
    carregarTipos();
    cdControler.text = TelaEditRestaurante.restaurante.codigo.toString()!;
    nomeControler.text = TelaEditRestaurante.restaurante.nome!;
    latitudeControler.text = TelaEditRestaurante.restaurante.latitude.toString()!;
    longitudeControler.text = TelaEditRestaurante.restaurante.longitude.toString()!;
    tipoCulinaria = TelaEditRestaurante.restaurante.culinaria?.codigo!;
    culinariaSelecionada = TelaEditRestaurante.restaurante.culinaria?.descricao!;
  }

  future<void> carregarTipos() async{
    final lista = await tipoDAO.listarTipos();
    setState(() {
      tipoCulinaria = lista;
    });
  }


  @override
  widget build(buildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Atualizar restaurante")),
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
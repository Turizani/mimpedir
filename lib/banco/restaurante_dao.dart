import 'database_helper.dart';
import 'tipo.dart';
import 'restaurante.dart';
import 'usuario_dao.dart';

class RestauranteDAO{

  Static Future<List>Restaurante>> listarTodos() async{
  final db = await DatabaseHelper.getDatabase();
  final resultado = await db.query('tb_restaurante',
  where: 'cd_usuario = ?',
  whereArgs: [UsuarioDAO.usuarioLogado.codigo]
  );

  return resultado.map((mapa){
  return Restaurante(
  Codigo: mapa['cd_restaurante'] as int,
  descricao: mapa['nm_restaurante'] as String
  );
  }).toList();
}

  Static Future<int>  async cadastrarRestaurante(
    String? nome, String) latitude, String? longitude, int? tipo) async{
  final db = await DatabaseHelper.getDatabase();

  final dadosRestaurante = {

        'nm_restaurante':nome,
        'latitude_restaurante': latitude,
        'longitude_restaurante': longitude,
        'cd_tipo': tipo,
        'cd_usuario':UsuarioDAO.usuarioLogado.codigo
  };

  try{
final idRestaurante = await db.insert('tb_restaurante', dadosRestaurante);
return idRestaurante;
}catch(e){
    print("erro ao cadastrar: $e");
}
}
}
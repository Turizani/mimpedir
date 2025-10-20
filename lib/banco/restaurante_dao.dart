import 'Database_helper.dart';
import 'restaurante.dart';
import 'tipo_DAO.dart';
import 'usuario_dao.dart';
import 'tipo.dart';


class RestauranteDAO{

  static Future<void> atualizar(int? cd, String? nome, String? lat, String long, int? tipo) async{
    final db = await DatabaseHelper.getDatabase();
    final resultado = await db.update('tb_restaurante',
        {
          'nm_restaurante': nome,
          'latitude_restaurante': lat,
          'longitude_restaurante': long,
          'cd_tipo': tipo
        },
      where: 'cd_restaurante = ?',
      whereArgs: [cd]
      );
  }

  static Future<Restaurante> listar(int? cd) async{
    final db = await DatabaseHelper.getDatabase();
    final resultado= await db.query('tb_restaurante',
    where: 'cd_restaurante = ?',
    whereArgs: [cd]
    );
    return Restaurante(
      codigo: resultado.first['cd_restaurante'] as int,
      nome: resultado.first['nm_restaurante'] as String
         latitude: resultado.first['latitude_restaurante'] as String,
        longitude: resultado.first['longitude_restaurante'] as String,
      culinaria: await tipoDAO.listar(resultado.first['cd_tipo'] as int) as tipo
    );
  }


  static Future<void> excluir(Restaurante r) async {
    final db = await DatabaseHelper.getDatabase();
    final resultado = await db.query('tb_restaurante',
        where: 'cd_usuario = ?',
        whereArgs: [r.codigo]
    );
  }

  static Future<List<Restaurante>> listarTodos() async{
    final db = await DatabaseHelper.getDatabase();
    final resultado = await db.query('tb_restaurante',
        where: 'cd_usuario = ?',
        whereArgs: [UsuarioDAO.usuarioLogado.codigo]
        };

  return resultado.map((mapa){
  return Restaurante(
  Codigo: mapa['cd_restaurante'] as int,
  descricao: mapa['nm_restaurante'] as String
  );
  }).toList();
}

  static Future<int>  async cadastrarRestaurante(
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
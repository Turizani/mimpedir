import 'Database_helper.dart';
import 'tipo.dart';

class tipoDAO{
a
  static Future<Tipo> listar(int? id) async{
    final db = await DatabaseHelper.getDatabase();
    final resultado = await db.query('tb_tipo',
    where: 'cd_tipo = ?',
    whereArgs: [id]
    );
    return Tipo(
      codigo: resultado.first['cd_tipo'] as int,
      descricao: resultado.first['nm_tipo'] as String
    );
  }

  static Future<List<Tipo>> listarTipos() async{
    final db = await DatabaseHelper.getDatabase();
    final resultado = await db.query('tb_tipo');
    return resultado.map((mapa){
      return Tipo(
      Codigo: mapa['cd_tipo'] as int,
  descricao: mapa['nm_tipo'] as String
      );
  }).toList();
}
}
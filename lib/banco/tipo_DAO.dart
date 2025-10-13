import 'database_helper.dart';
import 'tipo.dart';
class tipoDAO{

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
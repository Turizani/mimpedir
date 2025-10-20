import 'database_helper.dart';
import '../usuario.dart';

class UsuarioDAO {
  static Future<bool> autenticar(String login, String senha) async {
    final db = await DatabaseHelper.getDatabase();

    final reultado = await db.query(
        'tb_usuario',
        where: 'nm_login = ? and ds_senha = ?',
        whereArgs: [login, senha]
    );

    usuarioLogado.codigo = reultado.first['cd_usuario'] as int;
    usuarioLogado.nome = reultado.first['nm_usuario'] as String;
    usuarioLogado.login = reultado.first['nm_login'] as String;
    usuarioLogado.senha = reultado.first['ds_senha'] as String;

    return resultado.isNotEmpty;
  }

}
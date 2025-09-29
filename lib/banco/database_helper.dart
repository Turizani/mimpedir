import 'package:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final _nomeBanco = 'solucao_completa.db';
  static Database? _db;

  static Future<Database> getDatabase() async {
    if (_db != null) return _db!;

    Directory pastabanco = await getApplicationDocumentsDirectory();
    String caminho = join(pastabanco.path, _nomeBanco);

    if (!File(caminho).existsSync()) {
      ByteData data = await rootBundle.load('assets/$_nomeBanco');
      List<int> bytes = data.buffer.asInt8List(
          data.offsetIntBytes, data.lengthIntBytes);
      await File(caminho).writeAsbytes(bytes);
    }


    _db = await openDatabase(caminho);
    return _db!;
  }
}

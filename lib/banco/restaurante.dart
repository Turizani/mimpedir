import '../estilos/usuario.dart';
import 'tipo.dart';

class Restaurante{
  int? _codigo;
  String? _nome;
  String?  _latitude;
  String? _longitude;
  Usuario? _proprietario;
  Tipo? _culinaria;


  int? get codigo => _codigo;
  String? get nome => nome;
  String? get Latitude => _latitude;
  String? get longitude => _longitude;
  Usuario? get Proprietario => _proprietario;
  Tipo? get Culinaria => _culinaria;

//setters
  set codigo(int? valor) => _codigo = valor;
  set nome(String? valor) => _nome = valor;
  set latitude(String? valor) => _latitude = valor;
  set longitude(String? valor) => _longitude = valor;
  set proprietario(Usuario? valor) => _proprietario = valor;
  set culinaria(Tipo valor) => _culinaria = valor;

  //construtor
Restaurante({
  int? codigo,
  String? nome,
  String?  latitude,
  String? longitude,
  Usuario? proprietario,
  Tipo? culinaria,
  }) {
  _codigo = codigo;
  _nome = nome;
  _latitude = latitude;
  _longitude = longitude;
  _proprietario = proprietario;
  _culinaria = culinaria;
}
}

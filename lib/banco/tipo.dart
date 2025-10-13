class Tipo {
  int? _codigo;
  String? _descricao;

  //Getters
int? get codigo => _codigo;
String get descricao => descricao;

//setters
set codigo(int? valor) => _codigo = valor;
set descricao(String? Valor) => _descricao = Valor;

//construtor
tipo({int? codigo, String? descricao}) {
  _codigo = codigo;
  _descricao = descricao;
}
}
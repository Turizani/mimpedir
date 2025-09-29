class usuario{
  int? _codigo;
  String _nome;
  String _login;
  String _Senha;
  //contrutor
Usuario({int? codigo, String? senha, String? login, String? nome}){
  _codigo = codigo;
  _login = nome;
  _nome = nome;
  _Senha = Senha;
}
//getters
int? get codigo => _codigo;
  String? get nome => _nome;
  String? get senha => _Senha;

  //exemplo de forma classica
String? get login{
  return _login;
}
//setters
set nome(String? nome) => _nome = nome;
  set senha(String? senha) => _Senha =Senha;
  set Codigo(String? nome) => _codigo =codigo;

  //exemplo forms classica de criar
set login(String? login){
  _login = login;
}

}
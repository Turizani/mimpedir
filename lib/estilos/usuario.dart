class Usuario {
  int? _codigo;
  String? _nome;
  String? _login;
  String? _senha;

  Usuario({this.codigo, this.senha, this.login, this.nome});

  bool logar(String loginDigitado, String senhaDigitado) {
    if (login == this.login && senha == this.senha) {
      return true;
    } else {
      return false;
    }
  }
  }

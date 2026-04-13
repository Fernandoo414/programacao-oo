import 'dart:io';

class Endereco {
  String _rua;
  int _numero;
  String _bairro;
  String _cidade;
  String _estado;
  int _cep;

  Endereco(this._rua, this._numero, this._bairro, this._cidade, this._estado, this._cep) {
    if (_rua.trim().isEmpty) {
      throw ArgumentError("A rua precisa conter as informacoes");
    }
    if (_numero <= 0) {
      throw ArgumentError("O numero nao pode ser abaixo de 0");
    }
    if (_bairro.trim().isEmpty) {
      throw ArgumentError("O bairro precisa conter informacoes pedidas");
    }
    if (_cidade.trim().isEmpty) {
      throw ArgumentError("Precisa conter as informacoes da cidade");
    }
    if (_estado.trim().isEmpty) {
      throw ArgumentError("Precisa ser um Estado valido");
    }
    if (_cep < 10000000 || _cep > 99999999) {
      throw ArgumentError("o cep tem que ser valido: maior que 8 digitos e menor que 8 ");
    }
  }

  set rua(String r) {
    if (r.trim().isEmpty) {
      exit(1);
    }
    _rua = r;
  }

  String get rua => _rua;

  set numero(int n) {
    if (n <= 0) {
      exit(1);
    }
    _numero = n;
  }

  int get numero => _numero;

  set bairro(String b) {
    if (b.trim().isEmpty) {
      exit(1);
    }
    _bairro = b;
  }

  String get bairro => _bairro;

  set cidade(String c) {
    if (c.trim().isEmpty) {
      exit(1);
    }
    _cidade = c;
  }

  String get cidade => _cidade;

  set estado(String e) {
    if (e.trim().isEmpty) {
      exit(1);
    }
    _estado = e;
  }

  String get estado => _estado;

  set cep(int c) {
    if (c < 10000000 || c > 99999999) {
      exit(1);
    }
    _cep = c;
  }

  int get cep => _cep;

  exibirEndereco() {
    String cep0 = "";
    String cep1 = "";
    String cep2 = "";

    cep0 = _cep.toString();
    cep1 = cep0.substring(0, 5);
    cep2 = cep0.substring(5);

    print('');
    print("Moro no estado: $_estado");
    print("Na cidade eh $_cidade");
    print("No bairro: $_bairro");
    print("O numero da minha casa eh $_numero");
    print("E minha rua se chama $_rua");
    print("Meu cep eh $cep1 - $cep2");
    print('-----------------------------------------------------');
  }
}
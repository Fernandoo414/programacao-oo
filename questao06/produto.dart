import 'dart:io';

class Produto {
  int _codigo;
  String _nome;
  double _precoUnitario;
  int _quantidade;

  Produto(this._codigo, this._nome, this._precoUnitario, this._quantidade) {
    if (_codigo <= 0) {
      print("Esse codigo eh menor que 0");
    }
    if (_nome.trim().isEmpty) {
      print("O nome nao pode ser vazio");
    }
    if (_precoUnitario <= 0) {
      print("O preco unitario tem que ser maior que 0");
    }
    if (_quantidade <= 0) {
      print("A quantidade de produtos tem que ser maior que 0");
    }
  }

  set codigo(int c) {
    if (c <= 0) {
      exit(1);
    }
    _codigo = c;
  }

  int get codigo => _codigo;

  set nome(String n) {
    if (n.trim().isEmpty) {
      exit(1);
    }
    _nome = n;
  }

  String get nome => _nome;

  set precoUnitario(double p) {
    if (p <= 0) {
      exit(1);
    }
    _precoUnitario = p;
  }

  double get precoUnitario => _precoUnitario;

  set quantidade(int q) {
    if (q <= 0) {
      exit(1);
    }
    _quantidade = q;
  }

  int get quantidade => _quantidade;

  double calcularDesconto() {
    double porcentagem = 0;
    double total = 0;
    double valor_do_desconto = 0.0;

    if (_quantidade >= 20) {
      porcentagem = 15 / 100;
      total = (_precoUnitario * _quantidade);
      valor_do_desconto = porcentagem * total;

    } else if (_quantidade >= 10 && _quantidade < 20) {
      porcentagem = 10 / 100;
      total = (_precoUnitario * _quantidade);
      valor_do_desconto = porcentagem * total;

    } else if (_quantidade >= 5 && _quantidade < 10) {
      porcentagem = 5 / 100;
      total = (_precoUnitario * _quantidade);
      valor_do_desconto = porcentagem * total;

    } else if (_quantidade <= 4) {
      valor_do_desconto = 0;
    }
    return valor_do_desconto;
  }

  double calcularTotal() {
    double total1 = 0;
    total1 = (_precoUnitario * _quantidade) - calcularDesconto();
    return total1;
  }

  void exibirResumo() {
    print('O nome do produto eh: $_nome');
    print('O codigo do produto eh: $_codigo');
    print('O preco do produto eh: $_precoUnitario');
    print('A quantidade do produto eh: $_quantidade');
    print('O valor Total do desconto eh: ${calcularDesconto()}');
    print('O Total eh: ${calcularTotal()}');
  }
}
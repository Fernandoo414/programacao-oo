import 'dart:io';

class Produto {
  String _nome;
  double _preco;

  Produto(this._nome, this._preco) {
    if (_nome.trim().isEmpty) {
      throw ArgumentError("O nome do produto nao pode ser vazio");
    }
    if (_preco <= 0) {
      throw ArgumentError("O preco deve ser maior que 0");
    }
  }

  set nome(String n) {
    if (n.trim().isEmpty) {
      exit(1);
    }
    _nome = n;
  }

  String get nome => _nome;

  set preco(double p) {
    if (p <= 0) {
      exit(1);
    }
    _preco = p;
  }

  double get preco => _preco;
}

class Pedido {
  int _numero;
  Produto _produto;
  int _quantidade;

  Pedido(this._numero, this._produto, this._quantidade) {
    if (_numero <= 0) {
      throw ArgumentError("O numero do pedido deve ser maior que 0");
    }
    if (_quantidade <= 0) {
      throw ArgumentError("A quantidade deve ser maior que 0");
    }
  }

  set numero(int n) {
    if (n <= 0) {
      exit(1);
    }
    _numero = n;
  }

  int get numero => _numero;

  set produto(Produto p) {
    _produto = p;
  }

  Produto get produto => _produto;

  set quantidade(int q) {
    if (q <= 0) {
      exit(1);
    }
    _quantidade = q;
  }

  int get quantidade => _quantidade;

  double calcularTotal() {
    return _quantidade * _produto.preco;
  }

  void exibirPedido() {
    print("================================");
    print("PEDIDO Nº: $_numero");
    print("PRODUTO: ${_produto.nome}");
    print("PRECO UNITARIO: R\$ ${_produto.preco.toStringAsFixed(2)}");
    print("QUANTIDADE: $_quantidade");
    print("TOTAL DO PEDIDO: R\$ ${calcularTotal().toStringAsFixed(2)}");
  }
}
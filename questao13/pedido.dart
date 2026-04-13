import 'produto.dart';

class Pedido {
  int _numero;
  Produto _produto;
  int _quantidade;

  Pedido(this._numero, this._produto, this._quantidade) {
    if (_numero <= 0) throw "O número do pedido deve ser maior que 0.";
    if (_quantidade <= 0) throw "A quantidade deve ser maior que 0.";
  }

  double calcularTotal() {
    return _quantidade * _produto.preco;
  }

  void exibirPedido() {
    print("================================");
    print("PEDIDO Nº: $_numero");
    print("PRODUTO: ${_produto.nome}");
    print("PREÇO UNITÁRIO: R\$ ${_produto.preco.toStringAsFixed(2)}");
    print("QUANTIDADE: $_quantidade");
    print("TOTAL DO PEDIDO: R\$ ${calcularTotal().toStringAsFixed(2)}");
  }
}
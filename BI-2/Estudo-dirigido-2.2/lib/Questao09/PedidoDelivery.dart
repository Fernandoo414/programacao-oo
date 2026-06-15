import 'pedido.dart';

//Depois, crie a classe PedidoDelivery, que herda de Pedido e adiciona os atributos enderecoEntrega e taxaEntrega.
//Sobrescreva exibirPedido() para mostrar código, valor total, endereço de entrega, taxa de entrega e valor final.

class PedidoDelivery extends Pedido {
  final String enderecoEntrega;
  final double taxaEntrega;

  PedidoDelivery(
    int codigo,
    double valorTotal,
    this.enderecoEntrega,
    this.taxaEntrega,
  ) : super(codigo, valorTotal);

  double calcularValorFinal() {
    return valorTotal + taxaEntrega;
  }

  @override
  void exibirPedido() {
    print('Código: $codigo');
    print('Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}');
    print('Endereço: $enderecoEntrega');
    print('Taxa de Entrega: R\$ ${taxaEntrega.toStringAsFixed(2)}');
    print('Valor Final: R\$ ${calcularValorFinal().toStringAsFixed(2)}');
  }
}

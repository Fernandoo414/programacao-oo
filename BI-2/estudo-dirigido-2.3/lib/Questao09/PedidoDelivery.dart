import 'pedido.dart';
import 'processavel.dart';

class PedidoDelivery extends Pedido implements Processavel {
  final String enderecoEntrega;
  final double taxaEntrega;

  PedidoDelivery(
    int codigo,
    double valorTotal,
    String tipoDoPedido,
    this.enderecoEntrega,
    this.taxaEntrega,
  ) : super(codigo, valorTotal, tipoDoPedido);

   @override
  double get valorFinal => valorTotal + taxaEntrega;

   @override
  void exibirPedido() {
    print(toString());
  }

  @override
  String toString() {
    return 'Pedido: $codigo |Tipo do Pedido: $tipoDoPedido | Valor Total:  $valorTotal| Endereço: $enderecoEntrega | Taxa de Entrega: R\$ $taxaEntrega | Valor Final R\$ $valorFinal';
  }
}

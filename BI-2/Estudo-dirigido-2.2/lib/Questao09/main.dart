import 'PedidoDelivery.dart';
import 'PedidoRetirada.dart';
//No main(), crie um pedido delivery e um pedido para retirada. Exiba os dados dos dois pedidos.
void main() {
  var pedidoDelivery =
      PedidoDelivery(1788, 38, 'Rua Manoel Ribas 54', 15);

  var pedidoRetirada =
      PedidoRetirada(1899, 40, 'Carlos');

  print('\n==== Exibir Pedido Delivery ====');
  pedidoDelivery.exibirPedido();

  print('\n==== Exibir Pedido Retirada ====');
  pedidoRetirada.exibirPedido();
}
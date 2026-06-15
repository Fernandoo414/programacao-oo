import 'PedidoDelivery.dart';
import 'PedidoRetirada.dart';
import 'pedidoExpress.dart';
import 'listaGenerica.dart';
import 'processavel.dart';

void main() {
  var entrega01 = PedidoDelivery(1001, 120.00, 'delivery', 'Rua A', 15.00);
  var entrega02 = PedidoRetirada(1002, 80.00,  'retirada', 'Ana');
  var entrega03 = Pedidoexpress( 1003, 200.00, 'express',  40.00);
  var entrega04 = PedidoDelivery(1004, 150.00, 'delivery', 'Rua B', 20.00);
  var entrega05 = PedidoRetirada(1005, 60.00,  'retirada', 'Bruno');

  var pedido = ListaGenerica<Processavel>();
  pedido.adicionar(entrega01);
  pedido.adicionar(entrega02);
  pedido.adicionar(entrega03);
  pedido.adicionar(entrega04);
  pedido.adicionar(entrega05);

  pedido.imprimirItens();

  for (var pedido in pedido.itens) {
    print(pedido.valorFinal); 
  }

  for (var pedido in pedido.itens) {
    pedido.exibirPedido();
  }
}

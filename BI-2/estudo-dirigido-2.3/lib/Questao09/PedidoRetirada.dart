import 'pedido.dart';
import 'processavel.dart';

class PedidoRetirada extends Pedido implements Processavel{
  final String nomeCliente;

  PedidoRetirada(int codigo, double valorTotal,String tipoDoPedido, this.nomeCliente)
    : super(codigo, valorTotal, tipoDoPedido);


  @override
  double get valorFinal => valorTotal;

  @override
  void exibirPedido() {
    print(toString());
  }

 @override
  String toString() {
    return 'Pedido: $codigo | Valor Total: \$ ${valorTotal.toStringAsFixed(2)} | Tipo do Pedido: $tipoDoPedido |Responsavel pela retirada $nomeCliente  ';
  }

}

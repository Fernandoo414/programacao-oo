import 'pedido.dart';

//Crie também uma nova classe filha chamada PedidoRetirada, que herda de Pedido e adiciona o atributo nomeCliente.
//Sobrescreva exibirPedido() para mostrar código, valor total e nome do cliente que fará a retirada.
class PedidoRetirada extends Pedido {
  final String nomeCliente;

  PedidoRetirada(int codigo, double valorTotal, this.nomeCliente)
    : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print('Código: $codigo');
    print('Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}');
    print('Responsavel pela retirada $nomeCliente');
  }
}

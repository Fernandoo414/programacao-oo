//Crie uma classe abstrata Pedido com os atributos codigo e valorTotal. V
//A classe deve possuir construtor e declarar o método abstrato exibirPedido().V

abstract class Pedido {
  final int codigo;
  final double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  void exibirPedido();
}


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

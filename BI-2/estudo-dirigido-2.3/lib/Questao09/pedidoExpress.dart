import 'pedido.dart';
import 'processavel.dart';

class Pedidoexpress extends Pedido implements Processavel {
  final double taxaUrgencia;

  Pedidoexpress(
    int codigo,
    double valorTotal,
    String tipoDoPedido, 
    this.taxaUrgencia,
  ) : super(codigo, valorTotal, tipoDoPedido);

  @override
  double get valorFinal => valorTotal + taxaUrgencia;

  @override
  void exibirPedido() {
    print(toString());
  }

  @override
  String toString() {
    return 'Pedido: $codigo | Valor Total: $valorTotal | Tipo do Pedido: $tipoDoPedido | Taxa de Urgencia $taxaUrgencia | Valor Final $valorFinal';
  }
}

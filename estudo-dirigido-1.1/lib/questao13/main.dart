
import 'pedido.dart';

void main() {
  Produto p1 = Produto("Teclado", 150.0);
  Pedido pedido1 = Pedido(1, p1, 2);

  pedido1.exibirPedido();
}
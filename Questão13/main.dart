import 'pedido.dart';
import 'produto.dart';

void main() {
  // Criando os produtos primeiro
  Produto p1 = Produto("Mouse Gamer", 150.0);
  Produto p2 = Produto("Teclado Mecânico", 350.0);

  // Instanciando os 2 pedidos
  Pedido pedido01 = Pedido(101, p1, 2); // 2 mouses
  Pedido pedido02 = Pedido(102, p2, 1); // 1 teclado

  print("=== SISTEMA DE VENDAS TUIUTI ===");
  pedido01.exibirPedido();
  pedido02.exibirPedido();
  print("================================");
}
import 'triangulo.dart';

void main() {
  // Instância 1
  Triangulo t1 = Triangulo(5, 5, 5, "#");
  print("=== TRIÂNGULO 1 ===");
  t1.exibirResumo();
  t1.desenharEsquerda();
  t1.desenharCentralizado();

  print("\n" + "="*30 + "\n");

  // Instância 2
  Triangulo t2 = Triangulo(7, 8, 9, "*");
  print("=== TRIÂNGULO 2 ===");
  t2.exibirResumo();
  
  // Alterando um lado usando o método acessor (Setter)
  t2.lado1 = 6; 
  print("Após alterar lado1 para 6:");
  
  t2.exibirResumo();
  t2.desenharEsquerda();
  t2.desenharCentralizado();
}
import 'cofrinho.dart';

void main() {
  print("=== MEU POUPANÇA TUIUTI ===");
  
  // Instanciando 1 cofrinho com saldo inicial 0
  Cofrinho meuCofre = Cofrinho(0);

  // Realizando vários depósitos
  meuCofre.depositar(10.50);
  meuCofre.depositar(50.00);
  meuCofre.depositar(5.25);
  meuCofre.depositar(100.00);

  print(""); // Pula linha
  meuCofre.exibirSaldo();

  // Quebrando o cofrinho
  meuCofre.quebrar();

  // Verificando se realmente zerou
  print("\nVerificando após quebrar:");
  meuCofre.exibirSaldo();
} 
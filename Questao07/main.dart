import 'contador.dart';

void main() {
  // 1. Instanciando o primeiro contador com valor inicial 10
  print("=== OPERAÇÕES NO CONTADOR A ===");
  Contador contadorA = Contador(10);
  
  contadorA.exibirValor(); // Começa com 10
  contadorA.incrementar(); // Vai para 11
  contadorA.incrementar(); // Vai para 12
  contadorA.exibirValor();
  
  contadorA.decrementar(); // Volta para 11
  contadorA.exibirValor();
  
  contadorA.zerar();       // Redefine para 0
  print("Após zerar:");
  contadorA.exibirValor();

  print("\n" + "="*30 + "\n"); // Linha separadora para o console ficar limpo

  // 2. Instanciando o segundo contador com valor inicial 1
  print("=== OPERAÇÕES NO CONTADOR B ===");
  Contador contadorB = Contador(1);
  
  contadorB.exibirValor(); // Começa com 1
  contadorB.decrementar(); // Vai para 0
  contadorB.exibirValor();
  
  // Testando a restrição: não pode ficar negativo!
  print("Tentando decrementar abaixo de zero...");
  contadorB.decrementar(); 
  contadorB.exibirValor(); // Deve continuar sendo 0

  contadorB.incrementar(); // Sobe para 1 novamente
  contadorB.exibirValor();
}
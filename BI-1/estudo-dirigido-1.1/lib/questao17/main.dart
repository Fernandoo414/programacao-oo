import 'semaforo.dart';

void main() {
  print("=== SIMULADOR DE TRÂNSITO TUIUTI ===");
  
  // Instancia começando no vermelho
  Semaforo sinal = Semaforo("vermelho");

  // Simula 15 unidades de tempo (o suficiente para ver várias trocas)
  for (int i = 0; i < 15; i++) {
    sinal.exibirEstado();
    sinal.reduzirTempo();
  }
}
import 'inimigo.dart';

class Globin extends Inimigo {
  int velocidade;

  Globin(String nome, int vida, int nivel, double recompensa, this.velocidade)
    : super(nome, vida, nivel, recompensa);

  @override
  void exibirRecompensa() {
    print(
      'Globlin derrotado! Recompensa: R\$ ${recompensa.toStringAsFixed(2)}',
    );
  }

  @override
  void exibirStatus() {
    print(toString());
    print('Recompensa: R\$ ${recompensa.toStringAsFixed(2)}');
    print('Velocidade: $velocidade');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

import 'inimigo.dart';
//Classe Goblin v
//Crie uma classe Goblin, que herda de Inimigo.v
//O goblin deve possuir velocidade.
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar sua velocidade.
//O goblin também deve implementar a exibição da recompensa.

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
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Recompensa: R\$ ${recompensa.toStringAsFixed(2)}');
    print('Velocidade: $velocidade');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

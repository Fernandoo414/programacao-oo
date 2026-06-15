
import 'inimigo.dart';

//Goblin
//A partir de Inimigo, crie uma classe Goblin. O goblin deve possuir velocidade.
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar sua velocidade.
class Globin extends Inimigo {
  int velocidade;

  Globin(String nome, int vida, int nivel, double recompensa, this.velocidade)
    : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    super.exibirStatus();

    print('Velocidade: $velocidade');
  }
}

import 'personagem.dart';
import 'inimigo.dart';

abstract class Flamejante {
  void chamas(Personagem alvo);
}

class Dragao extends Inimigo implements Flamejante {
  int fogo;

  Dragao(String nome, int vida, int nivel, double recompensa, this.fogo)
    : super(nome, vida, nivel, recompensa);

  @override
  void chamas(Personagem alvo) {
    print('$nome soltou chamas negras em ${alvo.nome}!');
    alvo.receberDano(fogo);
  }

  @override
  void exibirRecompensa() {
    print('Dragão derrotado! Recompensa: R\$ ${recompensa.toStringAsFixed(2)}');
  }

  @override
  void exibirStatus() {
    print(toString());
    print('Recompensa: R\$ ${recompensa.toStringAsFixed(2)}');
    print('Poder de fogo: $fogo');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

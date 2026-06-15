import 'combatente.dart';
import 'personagem.dart';

//Mago
//Crie uma classe Mago, que herda de Combatente.
//O mago deve possuir mana.
//Além do ataque comum herdado de combatente, o mago deve conseguir lançar magia.
//A magia só pode ser lançada se o mago tiver pelo menos 10 pontos de mana.
//Ao lançar magia, o mago causa dano igual à sua força somada a 15 e consome 10 pontos de mana.

class Mago extends Combatente {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
    : super(nome, vida, nivel, forca);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Quantidade de Mana: $mana');
  }

  @override
  void atacar(Personagem alvo) {
    if (mana >= 10) {
      mana -= 10;

      int danoMagico = forca + 15;

      print('$nome usou Tempestade de Gelo!');

      alvo.receberDano(danoMagico);
    } else {
      print('$nome Ataque normal!');
      alvo.receberDano(forca);
    }
  }
}

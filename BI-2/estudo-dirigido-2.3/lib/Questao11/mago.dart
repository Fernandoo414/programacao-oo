import 'personagem.dart';
import 'combatente.dart';

abstract class Magico {
  void magia(Personagem alvo);
}

class Mago extends Combatente implements Magico {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
    : super(nome, vida, nivel, forca);

  @override
  int calcularDano() {
    return forca;
  }

  @override
  void atacar(Personagem alvo) {
    print('$nome usa ataque comum!');
    alvo.receberDano(calcularDano());
  }

  @override
  void magia(Personagem alvo) {
    if (mana < 10) {
      print('$nome não tem mana suficiente para lançar magia!');
      return;
    }

    mana -= 10;

    int danoMagico = forca + 15;

    print('$nome lançou uma magia de tempestade de gelo!');
    alvo.receberDano(danoMagico);
  }

  @override
  void exibirStatus() {
    print(toString());
    print('Força: $forca');
    print('Mana: $mana');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

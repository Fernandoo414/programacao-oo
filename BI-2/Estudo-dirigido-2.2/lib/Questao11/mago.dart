import 'personagem.dart';
import 'combatente.dart';

//Interface Magico
//Crie uma interface chamada Magico.
//Essa interface deve definir que uma classe mágica precisa possuir um comportamento de lançar magia contra outro personagem.
//Toda classe que implementar essa interface deverá obrigatoriamente saber lançar magia.
abstract class Magico {
  void magia(Personagem alvo);
}
//Classe Mago v
//Crie uma classe Mago, que herda de Combatente e implementa a interface Magico. v
//O mago deve possuir mana.v
// O mago deve implementar o ataque comum, causando dano baseado em sua força.
//Além do ataque comum, o mago deve conseguir lançar magia.
//A magia só pode ser lançada se o mago tiver pelo menos 10 pontos de mana. Ao lançar magia, o mago causa dano igual à sua força somada a 15 e consome 10 pontos de mana.
//Caso não tenha mana suficiente, deve ser exibida uma mensagem informando que o mago não pode lançar magia.
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar sua mana.

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
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
    print('Mana: $mana');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

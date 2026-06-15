import 'personagem.dart';

abstract class Combatente extends Personagem implements Atacavel {
  int forca;

  Combatente(String nome, int vida, int nivel, this.forca)
    : super(nome, vida, nivel);

  @override
  void atacar(Personagem alvo) {
    print('$nome atacou ${alvo.nome}');
    alvo.receberDano(calcularDano());
  }

  int calcularDano();
}

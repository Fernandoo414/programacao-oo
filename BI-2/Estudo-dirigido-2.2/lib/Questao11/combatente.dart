import 'personagem.dart';

//Classe abstrata Combatente v
//Crie uma classe abstrata Combatente, que representa personagens capazes de combater.v
//Essa classe deve herdar de Personagem e implementar a interface Atacavel.
//Além dos dados herdados de Personagem, a classe Combatente deve possuir a força do combatente.
//Todo combatente deve ser obrigado a atacar outro personagem, mas a forma exata do ataque deverá ser definida pelas classes filhas.
abstract class Combatente extends Personagem implements Atacavel {
  int forca;

  Combatente(String nome, int vida, int nivel, this.forca): super(nome, vida, nivel);

  @override
  void atacar(Personagem alvo) {
    print('$nome atacou ${alvo.nome}');
    alvo.receberDano(calcularDano());
  }

  int calcularDano();
}
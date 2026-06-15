import 'personagem.dart';

//Classe abstrata Inimigo v
//Crie uma classe abstrata Inimigo, que também herda de Personagem. v
//Essa classe representa personagens inimigos e deve possuir uma recompensa.v
//Todo inimigo deve ser obrigado a exibir o valor da recompensa concedida quando for derrotado.v

abstract class Inimigo extends Personagem {
  double recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa)
    : super(nome, vida, nivel);

  void exibirRecompensa();
}

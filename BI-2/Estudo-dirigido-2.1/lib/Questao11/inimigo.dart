import 'personagem.dart';


//Inimigo
//Agora crie uma classe Inimigo, que também herda de Personagem.
//Essa classe representa personagens inimigos e deve possuir uma recompensa.
//Todo inimigo deve conseguir exibir o valor da recompensa concedida quando for derrotado.
class Inimigo extends Personagem {
  double recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa)
    : super(nome, vida, nivel);

  void exibriRecompensa() {
    print(
      'Procura-se vivo ou morto: $nome | Recompensa: R\$ ${recompensa.toStringAsFixed(2)}',
    );
  }
}
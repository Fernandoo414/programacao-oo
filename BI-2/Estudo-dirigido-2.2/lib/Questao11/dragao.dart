import 'personagem.dart';
import 'inimigo.dart';

//Interface Flamejante
//Crie uma interface chamada Flamejante.
//Essa interface deve definir que uma classe flamejante precisa possuir um comportamento de soltar fogo contra outro personagem.
//Toda classe que implementar essa interface deverá obrigatoriamente saber soltar fogo.

abstract class Flamejante {
  void chamas(Personagem alvo);
}

//Classe Dragao v
//Crie uma classe Dragao, que herda de Inimigo e implementa a interface Flamejante.v
//O dragão deve possuir poder de fogo. Ele deve conseguir soltar fogo em outro personagem, causando dano igual ao seu poder de fogo.
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar seu poder de fogo.
//O dragão também deve implementar a exibi-ção da recompensa.

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
    print(
      'Dragão derrotado! Recompensa: R\$ ${recompensa.toStringAsFixed(2)}',
    );
  }

  @override
  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Recompensa: R\$ ${recompensa.toStringAsFixed(2)}');
    print('Poder de fogo: $fogo');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

import 'personagem.dart';
import 'inimigo.dart';


//Dragao
//Por fim, crie uma classe Dragao, que herda de Inimigo. O dragão deve possuir poder de fogo.
//Ele deve conseguir soltar fogo em outro personagem, causando dano igual ao seu poder de fogo.
class Dragao extends Inimigo {
  int fogo;

  Dragao(String nome, int vida, int nivel, double recompensa, this.fogo)
    : super(nome, vida, nivel, recompensa);

  void soltarFogo(Personagem alvo) {
    print('$nome lançou chamas negras!');

    alvo.receberDano(fogo);
  }
}

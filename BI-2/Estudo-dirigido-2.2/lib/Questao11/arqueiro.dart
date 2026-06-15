import 'combatente.dart';
import 'personagem.dart';


//Classe Arqueiro v
//Crie uma classe Arqueiro, que herda de Combatente. v
//O arqueiro deve possuir uma quantidade de flechas. v
//Ao atacar, o arqueiro só pode realizar o ataque se tiver pelo menos uma flecha disponível. v
//Cada ataque consome uma flecha. v
//Caso não tenha flechas, deve ser exibida uma mensagem informando que o arqueiro não pode atacar.v
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar a quantidade de flechas.v
class Arqueiro extends Combatente {
  int qtdFlechas; //privatizar tudo (minha visão, privatizar e fazer getter e setter em tudo)

  Arqueiro(String nome, int vida, int nivel, int forca, this.qtdFlechas)
    : super(nome, vida, nivel, forca);

  @override
  int calcularDano() {
    return forca;
  }

  @override
  void atacar(Personagem alvo) {
    if (qtdFlechas <= 0) {
      print('$nome não possui flechas e não pode atacar!');
      return;
    }

    qtdFlechas--;
    print('$nome disparou uma flecha!');
    super.atacar(alvo);
  }

  @override
  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
    print('Flechas: $qtdFlechas');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}
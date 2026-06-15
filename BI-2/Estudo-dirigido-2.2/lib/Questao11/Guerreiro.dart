import 'combatente.dart';
import 'personagem.dart';

//Classe Guerreiro v
//Crie uma classe Guerreiro, que herda de Combatente. v
//O guerreiro deve possuir armadura. v
//O guerreiro deve implementar o ataque comum, causando dano baseado em sua força.
//Além disso, o guerreiro deve possuir um ataque pesado, que causa o dobro da força como dano. v
//Ao exibir seu status, além das informações comuns de personagem, também deve mostrar sua armadura.v
class Guerreiro extends Combatente {
  String armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
    : super(nome, vida, nivel, forca);

  @override
  int calcularDano() {
    return forca;
  }

  void ataqueComun(Personagem alvo) {
    print('$nome usa ataque comum!');
    alvo.receberDano(calcularDano());
  }

  void ataquePesado(Personagem alvo) {
    print('$nome usa ataque pesado!');
    alvo.receberDano(calcularDano() * 2);
  }

  @override
  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
    print('Armadura: $armadura');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

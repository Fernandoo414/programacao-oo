import 'combatente.dart';
import 'personagem.dart';

class Guerreiro extends Combatente {
  String armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
    : super(nome, vida, nivel, forca);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Qual sua Armadura: $armadura');
  }

  void ataquePesado(Personagem alvo) {
    int dano = forca * 2;
    print('$nome usa ataque ataquePesado!');
    alvo.receberDano(dano);
  }
}

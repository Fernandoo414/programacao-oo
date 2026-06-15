import 'combatente.dart';
import 'personagem.dart';

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
    print(toString());
    print('Força: $forca');
    print('Armadura: $armadura');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

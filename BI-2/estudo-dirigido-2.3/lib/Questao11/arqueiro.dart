import 'combatente.dart';
import 'personagem.dart';

class Arqueiro extends Combatente {
  int
  qtdFlechas; //privatizar tudo (minha visão, privatizar e fazer getter e setter em tudo)

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
    print(toString());
    print('Força: $forca');
    print('Flechas: $qtdFlechas');
    print('Status: ${estaVivo() ? "Vivo" : "Morto"}');
  }
}

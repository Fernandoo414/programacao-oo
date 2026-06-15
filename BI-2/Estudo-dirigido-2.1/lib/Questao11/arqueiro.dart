import 'personagem.dart';
import 'combatente.dart';

class Arqueiro extends Combatente {
  int QTD_Flexas;

  Arqueiro(String nome, int vida, int nivel, int forca, this.QTD_Flexas)
    : super(nome, vida, nivel, forca);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Quantidade de Flexas: $QTD_Flexas');
  }

  @override
  void atacar(Personagem alvo) {
    if (QTD_Flexas > 0) {
      QTD_Flexas--;
      print('$nome disparou uma flexa!');
      alvo.receberDano(forca);
    } else {
      print('$nome não possui flecha!');
    }
  }
}

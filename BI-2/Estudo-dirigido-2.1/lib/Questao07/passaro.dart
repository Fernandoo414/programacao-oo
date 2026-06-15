import 'animal.dart';

class Passaro extends Animal {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    super.emitirSom();
    print('Piado: piu piu');
  }
}

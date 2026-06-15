import 'animal.dart';

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    super.emitirSom();
    print('$nome mia: miau');
  }
}

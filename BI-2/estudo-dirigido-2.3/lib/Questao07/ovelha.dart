import 'animal.dart';
import 'sonoro.dart';

class Ovelha extends Animal implements Sonoro {
  Ovelha(String nome, String tipoDeAnimal) : super(nome, tipoDeAnimal);

  @override
  String toString() {
    return '${super.toString()} ';
  }

  void emitirSom() {
    print(toString());
  }
}

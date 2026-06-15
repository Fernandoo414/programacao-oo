import 'animal.dart';
import 'sonoro.dart';

class Passaro extends Animal implements Sonoro {
  Passaro(String nome , String tipoDeAnimal) : super(nome, tipoDeAnimal);

 @override
  String toString() {
    return '${super.toString()} '; 
  }

  void emitirSom() {
    print(toString()); 
  }
}

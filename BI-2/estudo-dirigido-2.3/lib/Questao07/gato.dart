import 'animal.dart';
import 'sonoro.dart';

class Gato extends Animal implements Sonoro{
  Gato(String nome , String tipoDeAnimal) : super(nome , tipoDeAnimal);

  @override
  String toString() {
    return '${super.toString()} '; 
  }

  void emitirSom() {
    print(toString()); 
  }
}


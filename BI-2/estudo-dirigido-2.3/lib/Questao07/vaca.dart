import 'animal.dart';
import 'sonoro.dart';

class Vaca extends Animal implements Sonoro{
  Vaca(String nome, String tipoDeAnimal) : super(nome, tipoDeAnimal);

 @override
  String toString() {
    return '${super.toString()} '; 
  }

  void emitirSom() {
    print(toString()); 
  }
}

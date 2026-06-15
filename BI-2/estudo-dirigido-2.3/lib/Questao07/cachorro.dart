import 'animal.dart';
import 'sonoro.dart';

class Cachorro extends Animal implements Sonoro{
  Cachorro(String nome , String tipoDeAnimal) : super(nome, tipoDeAnimal);

 @override
  String toString() {
    return '${super.toString()} '; 
  }

  void emitirSom() {
    print(toString()); 
  }
}

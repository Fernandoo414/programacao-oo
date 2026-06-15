import 'animal.dart';

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    super.emitirSom();
    print('$nome lati: au au');
  }
}

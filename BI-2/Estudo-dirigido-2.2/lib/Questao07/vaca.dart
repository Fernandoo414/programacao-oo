import 'animal.dart';

//Crie também uma nova classe filha chamada Vaca, que herda de Animal e sobrescreve emitir Som() com a mensagem “muuu”.
class Vaca extends Animal {
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() {
    super.emitirSom();
    print('$nome mugi: Muuu');
  }
}

import 'cachorro.dart';
import 'gato.dart';
import 'passaro.dart';

void main() {
  var cachorro = Cachorro("Rex");
  var gato = Gato("Mimi");
  var passaro = Passaro("Piu");

  cachorro.emitirSom();
  gato.emitirSom();
  passaro.emitirSom();
}
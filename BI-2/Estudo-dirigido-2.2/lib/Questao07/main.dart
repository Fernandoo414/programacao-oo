import 'cachorro.dart';
import 'gato.dart';
import 'passaro.dart';
import 'vaca.dart';
//No main() crie um objeto de cada animal e mande todos emitirem som.

void main() {
  var cachorro = Cachorro('Rex');
  var gato = Gato('Garfield');
  var passaro = Passaro('Ze pequeno');
  var vaca = Vaca('Mimosa');

  cachorro.emitirSom();
  gato.emitirSom();
  passaro.emitirSom();
  vaca.emitirSom();
}

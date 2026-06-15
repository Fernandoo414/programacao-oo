import 'cachorro.dart';
import 'gato.dart';
import 'passaro.dart';
import 'vaca.dart';
import 'ovelha.dart';
import 'listaGenerica.dart';
import 'sonoro.dart';

void main() {
  var cachorro = Cachorro('Rex', 'Cachorro');
  var gato = Gato('Garfield', 'Gato');
  var passaro = Passaro('Piu', 'Passaro');
  var vaca = Vaca('Mimosa', 'Vaca');
  var ovelha = Ovelha('Dolly', 'Ovelha');

   var animal = ListaGenerica<Sonoro>();
  animal.adicionar(cachorro);
  animal.adicionar(gato);
  animal.adicionar(passaro);
  animal.adicionar(vaca);
  animal.adicionar(ovelha);

  //animal.imprimirItens(); 

  for (var animal in animal.itens) {
    animal.emitirSom();
  }
}

import 'carro.dart';
import 'moto.dart';
//No main(), crie um carro e uma moto. Chame exibirFicha() para os dois objetos

void main() {
  var carro = Carro('honda', 'Civic', 2015, 'quatro portas');
  var moto = Moto('kawazaki', 'Ninja', 2022, 998);

  print('=== FICHA TÉCNICA ===');
  carro.exibirFicha();

  print('=== FICHA TÉCNICA ===');
  moto.exibirFicha();
}

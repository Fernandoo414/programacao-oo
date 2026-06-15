import 'IngressoVip.dart';
import 'IngressoPromocional.dart';

//No main(), crie um ingresso VIP e um ingresso promocional. Mostre o valor final de cada um.

void main() {
  var ingressoVip = IngressoVip('Mario 2 ', 17, 20);
  var ingressoPromocional = IngressoPromocional('Venom', 30, 10);

  ingressoVip.exibirResumo();
  print('----------------');
  ingressoPromocional.exibirResumo();
}

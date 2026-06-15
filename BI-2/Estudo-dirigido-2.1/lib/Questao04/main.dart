import 'ContaPoupanca.dart';
import 'ContaCorrente.dart';
void main() {
  ContaPoupanca poupanca = ContaPoupanca("Leonardo");

  poupanca.depositar(1000);

  poupanca.aplicarRendimento();

  poupanca.exibirSaldo();

  ContaCorrente corrente = ContaCorrente("Carlos");

  corrente.depositar(2000);

  corrente.aplicarRendimento();

  corrente.exibirSaldo();
}
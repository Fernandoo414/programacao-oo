//No main(), crie uma conta poupança e uma conta corrente. Deposite valores, aplique rendimento e exiba o saldo final.
import 'ContaCorrente.dart';
import 'ContaPoupanca.dart';

void main() {
  ContaPoupanca poupanca = ContaPoupanca("Leonardo");

  poupanca.depositar(1000);

  poupanca.aplicarRendimento();

  poupanca.exibirSaldo();

  poupanca.aplicarRendimento();

  ContaCorrente corrente = ContaCorrente("Carlos");

  corrente.depositar(2000);

  corrente.aplicarRendimento();

  corrente.exibirSaldo();

  corrente.aplicarRendimento();
}

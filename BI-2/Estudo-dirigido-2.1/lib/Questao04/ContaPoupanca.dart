import 'ContaBancaria.dart';
class ContaPoupanca extends ContaBancaria {
  double taxaRendimento = 0.01;

  ContaPoupanca(String titular) : super(titular);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;

    print("Rendimento de 1% aplicado.");
  }
}
import 'ContaBancaria.dart';
class ContaCorrente extends ContaBancaria {
  double taxaRendimento = 0.05;

  ContaCorrente(String titular) : super(titular);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;

    print("Rendimento de 5% aplicado.");
  }
}

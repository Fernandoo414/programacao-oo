import 'ContaBancaria.dart';

class ContaCorrente extends ContaBancaria implements Rentavel {
  double taxaRendimento = 0.05;

  ContaCorrente(String titular,String tipoConta, double _saldo) : super(titular, tipoConta, _saldo);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;

    print("Rendimento de 5% aplicado.");
  }
}

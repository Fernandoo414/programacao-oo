import 'ContaBancaria.dart';


class ContaInvestimento extends ContaBancaria implements Rentavel{
  double taxaRendimento = 0.08;

  ContaInvestimento(String titular, String tipoConta, double _saldo) : super(titular, tipoConta, _saldo);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;

    print("Rendimento de 8% aplicado.");
  }
}
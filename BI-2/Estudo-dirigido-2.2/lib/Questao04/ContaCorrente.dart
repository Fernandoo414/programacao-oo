import 'ContaBancaria.dart';

//Crie também a classe ContaCorrente, que herda de ContaBancaria e implementa Rentavel.
//A conta corrente deve possuir taxa de rendimento de 5%. No método aplicarRendimento(), aumente o saldo conforme a taxa da conta.

class ContaCorrente extends ContaBancaria implements Rentavel {
  double taxaRendimento = 0.05;

  ContaCorrente(String titular) : super(titular);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;

    print("Rendimento de 5% aplicado.");
  }
}

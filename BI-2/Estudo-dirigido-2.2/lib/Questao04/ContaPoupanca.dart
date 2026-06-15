import 'ContaBancaria.dart';

//Crie a classe ContaPoupanca, que herda de ContaBancaria e implementa Rentavel.
//A conta poupança deve possuir taxa de rendimento de 1%.
class ContaPoupanca extends ContaBancaria  implements Rentavel{
  double taxaRendimento = 0.01;

  ContaPoupanca(String titular) : super(titular);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;

    print("Rendimento de 1% aplicado.");
  }
}
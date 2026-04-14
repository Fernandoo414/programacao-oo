class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);
}

class Gerente {
  void depositar(Conta conta, double valor) {
    conta.saldo += valor;
  }

  void sacar(Conta conta, double valor) {
    if (valor <= conta.saldo) {
      conta.saldo -= valor;
    }
  }
}

void main() {
  var conta = Conta("Leo", 1000);

  var g1 = Gerente();
  var g2 = Gerente();

  g1.depositar(conta, 500);
  print("Saldo após depósito: ${conta.saldo}");

  g2.sacar(conta, 200);
  print("Saldo após saque: ${conta.saldo}");
}
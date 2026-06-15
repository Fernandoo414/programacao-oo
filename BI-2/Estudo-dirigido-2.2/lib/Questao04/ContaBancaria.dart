//Crie uma classe ContaBancaria com os atributos titular e saldo, além dos métodos depositar(double valor), sacar(double valor) e exibirSaldo().

class ContaBancaria {
  String titular;
  double _saldo = 0.0;

  ContaBancaria(this.titular);

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print("Depósito de R\$ $valor realizado com sucesso!");
    } else {
      print("Valor inválido para depósito.");
    }
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      print("Saque de R\$ $valor realizado.");
    } else {
      print("Saldo insuficiente ou valor inválido.");
    }
  }

  void exibirSaldo() {
    print("Titular: $titular | Saldo Atual: R\$ ${_saldo.toStringAsFixed(2)}");
  }

  // Getter
  double get saldo => _saldo;

  // Setter protegido
  set saldo(double novoSaldo) {
    if (novoSaldo >= 0) {
      _saldo = novoSaldo;
    }
  }
}

//Depois, crie uma interface chamada Rentavel, com o método aplicarRendimento().
abstract class Rentavel {
  void aplicarRendimento();
}




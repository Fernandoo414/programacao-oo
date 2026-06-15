//Crie uma classe ContaBancaria
//com atributos  titular, saldo,
//Criar métodos depositar(double valor), sacar(dou-ble valor) e exibirSaldo().
//Depois, crie uma classe ContaPoupanca que herda de ContaBancaria e possui o atributo taxaRendimento de 1%.
//Depois, crie uma classe ContaCorrente que herda de ContaBancaria e possui o atributo taxaRendimento de 5%.
//Crie um método aplicarRendimento() que aumente o saldo conforme a taxa

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
    print(
      "Titular: $titular | Saldo Atual: R\$ ${_saldo.toStringAsFixed(2)}",
    );
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




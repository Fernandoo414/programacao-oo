class ContaBancaria {
  String titular;
  double _saldo = 0.0;
  String  tipoConta;

  ContaBancaria(this.titular,this.tipoConta,this._saldo);

  void depositar(double valor ) {
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

  double get saldo => _saldo;

  // Setter protegido
  set saldo(double novoSaldo) {
    if (novoSaldo >= 0) {
      _saldo = novoSaldo;
    }
  }

  void exibirSaldo() {
    print("Titular: $titular | Saldo Atual: R\$ ${_saldo.toStringAsFixed(2)}");
  }
   
  
  
  @override
  String toString() {
    return 'Titular: $titular || Tipo da conta: $tipoConta | Saldo: R\$ ${saldo.toStringAsFixed(2)}  ';
  }

}

abstract class Rentavel {
  void aplicarRendimento();
}

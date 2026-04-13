class Cofrinho {
  double _saldo;
  int _quantidadeDepositos;

  Cofrinho(double saldoInicial)
      : _saldo = saldoInicial >= 0 ? saldoInicial : 0,
        _quantidadeDepositos = 0;

  set saldo(double valor) {
    if (valor < 0) {
      throw ArgumentError("O saldo nao pode ser negativo");
    }
    _saldo = valor;
  }

  double get saldo => _saldo;

  int get quantidadeDepositos => _quantidadeDepositos;

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      _quantidadeDepositos++;
    } else {
      throw ArgumentError("O valor do deposito deve ser maior que zero");
    }
  }

  void exibirSaldo() {
    print("Saldo atual no cofrinho: R\$ ${_saldo.toStringAsFixed(2)}");
    print("Total de depositos realizados: $_quantidadeDepositos");
  }

  void quebrar() {
    print("\n--- QUEBRANDO O COFRINHO ---");
    print("Total acumulado: R\$ ${_saldo.toStringAsFixed(2)}");
    print("Quantidade de depositos: $_quantidadeDepositos");

    _saldo = 0;
    _quantidadeDepositos = 0;
  }
}
class Cofrinho {
  double _saldo;
  int _quantidadeDepositos;

  // Construtor: saldo inicial >= 0 e depósitos sempre começa em 0
  Cofrinho(double saldoInicial) 
      : _saldo = saldoInicial >= 0 ? saldoInicial : 0,
        _quantidadeDepositos = 0;

  // Método para depositar
  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      _quantidadeDepositos++; // Incrementa a contagem conforme a restrição
      print("Depósito de R\$ ${valor.toStringAsFixed(2)} realizado com sucesso!");
    } else {
      print("Erro: O valor do depósito deve ser maior que zero.");
    }
  }

  // Método para exibir o saldo sem resetar
  void exibirSaldo() {
    print("Saldo atual no cofrinho: R\$ ${_saldo.toStringAsFixed(2)}");
    print("Total de depósitos realizados: $_quantidadeDepositos");
  }

  // Método quebrar: mostra o total, os depósitos e zera tudo
  void quebrar() {
    print("\n--- QUEBRANDO O COFRINHO! 🔨 ---");
    print("Total acumulado: R\$ ${_saldo.toStringAsFixed(2)}");
    print("Quantidade de vezes que você economizou: $_quantidadeDepositos");
    
    // Reseta os valores conforme a restrição
    _saldo = 0;
    _quantidadeDepositos = 0;
    print("O cofrinho agora está vazio e zerado.");
  }
}
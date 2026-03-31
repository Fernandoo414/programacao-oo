class Contador {
  // O prefixo "_" torna a variável privada dentro deste arquivo
  int _valor; 

  // Construtor
  Contador(int valorInicial) : _valor = valorInicial >= 0 ? valorInicial : 0;

  // Método para aumentar
  void incrementar() {
    _valor++;
  }

  // Método para diminuir com a restrição de não ser negativo
  void decrementar() {
    if (_valor > 0) {
      _valor--;
    } else {
      print("Aviso: O contador já está em 0.");
    }
  }

  void zerar() {
    _valor = 0;
  }

  // Como o valor é privado, precisamos deste método para o Main conseguir ver o número
  void exibirValor() {
    print("Valor atual do contador: $_valor");
  }
}
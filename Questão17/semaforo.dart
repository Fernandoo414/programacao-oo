class Semaforo {
  String _corAtual;
  int _tempoRestante;

  // Construtor
  Semaforo(this._corAtual) : _tempoRestante = 0 {
    // Inicializa o tempo correto baseado na cor de nascimento do objeto
    _configurarTempo();
  }

  // Método privado para configurar o tempo baseado na cor
  void _configurarTempo() {
    if (_corAtual == "vermelho") {
      _tempoRestante = 5;
    } else if (_corAtual == "verde") {
      _tempoRestante = 4;
    } else if (_corAtual == "amarelo") {
      _tempoRestante = 2;
    } else {
      throw "Cor inválida! Use: vermelho, verde ou amarelo.";
    }
  }

  // Lógica de transição: vermelho -> verde -> amarelo -> vermelho
  void trocarCor() {
    if (_corAtual == "vermelho") {
      _corAtual = "verde";
    } else if (_corAtual == "verde") {
      _corAtual = "amarelo";
    } else if (_corAtual == "amarelo") {
      _corAtual = "vermelho";
    }
    _configurarTempo(); // Reinicia o tempo para a nova cor
    print("\n--- O SINAL MUDOU PARA $_corAtual ---");
  }

  void reduzirTempo() {
    if (_tempoRestante > 0) {
      _tempoRestante--;
    }

    // Se o tempo acabar, troca automaticamente
    if (_tempoRestante == 0) {
      trocarCor();
    }
  }

  void exibirEstado() {
    String emoji = "";
    if (_corAtual == "vermelho") emoji = "🔴";
    if (_corAtual == "verde") emoji = "🟢";
    if (_corAtual == "amarelo") emoji = "🟡";

    print("Estado: $emoji $_corAtual | Tempo Restante: $_tempoRestante");
  }
}
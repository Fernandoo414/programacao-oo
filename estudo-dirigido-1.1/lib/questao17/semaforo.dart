class Semaforo {
  String _corAtual;
  int _tempoRestante;

  Semaforo(this._corAtual) : _tempoRestante = 0 {
    _validarCor();
    _configurarTempo();
  }

  String get corAtual => _corAtual;
  int get tempoRestante => _tempoRestante;

  set corAtual(String c) {
    _corAtual = c;
    _validarCor();
    _configurarTempo();
  }

  set tempoRestante(int t) {
    if (t < 0) {
      print("Tempo nao pode ser negativo");
    }
    _tempoRestante = t;
  }

  void _validarCor() {
    if (_corAtual != "vermelho" &&
        _corAtual != "verde" &&
        _corAtual != "amarelo") {
      print("Cor invalida: use vermelho, verde ou amarelo");
    }
  }

  void _configurarTempo() {
    if (_corAtual == "vermelho") {
      _tempoRestante = 5;
    } else if (_corAtual == "verde") {
      _tempoRestante = 4;
    } else if (_corAtual == "amarelo") {
      _tempoRestante = 2;
    }
  }

  void trocarCor() {
    if (_corAtual == "vermelho") {
      _corAtual = "verde";
    } else if (_corAtual == "verde") {
      _corAtual = "amarelo";
    } else {
      _corAtual = "vermelho";
    }

    _configurarTempo();
  }

  void reduzirTempo() {
    if (_tempoRestante > 0) {
      _tempoRestante--;
    }

    if (_tempoRestante == 0) {
      trocarCor();
    }
  }

  void exibirEstado() {
    print("Estado: $_corAtual | Tempo Restante: $_tempoRestante");
  }
}
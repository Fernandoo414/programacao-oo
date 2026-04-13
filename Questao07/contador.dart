import 'dart:io';

class Contador {
  int _valor;

  Contador(this._valor) {
    if (_valor < 0) {
      throw ArgumentError("O valor nao pode ser negativo");
    }
  }

  set valor(int v) {
    if (v < 0) {
      exit(1);
    }
    _valor = v;
  }

  int get valor => _valor;

  void incrementar() {
    _valor++;
  }

  void decrementar() {
    if (_valor > 0) {
      _valor--;
    } else {
      print("Aviso: O contador ja esta em 0.");
    }
  }

  void zerar() {
    _valor = 0;
  }

  void exibirValor() {
    print("Valor atual do contador: $_valor");
  }
}
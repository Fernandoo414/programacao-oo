import 'dart:io';

class Lampada {
  bool _ligada = false;
  int _quantidadeLigacoes = 0;
  bool _queimada = false;

  set ligada(bool l) {
    _ligada = l;
  }

  bool get ligada => _ligada;

  set quantidadeLigacoes(int q) {
    if (q < 0) {
      exit(1);
    }
    _quantidadeLigacoes = q;
  }

  int get quantidadeLigacoes => _quantidadeLigacoes;

  set queimada(bool q) {
    _queimada = q;
  }

  bool get queimada => _queimada;

  void ligar() {
    if (!_queimada) {
      _quantidadeLigacoes++;
      _ligada = true;

      if (_quantidadeLigacoes > 5) {
        _queimada = true;
        _ligada = false;
      }
    }
  }

  void desligar() {
    _ligada = false;
  }

  void exibirEstado() {
    if (_queimada) {
      print('A lampada esta queimada');
    } else if (_ligada) {
      print('A lampada esta ligada');
    } else {
      print('A lampada esta desligada');
    }
    print(_quantidadeLigacoes);
  }
}
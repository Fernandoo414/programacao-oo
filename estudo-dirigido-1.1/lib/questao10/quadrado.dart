import 'dart:io';

class Quadrado {
  double _lado;
  String _caractere;

  Quadrado(this._lado, this._caractere) {
    if (_lado <= 0) {
      print("O lado do quadrado deve ser maior que 0");
    }
    if (_caractere.length > 1 || _caractere.trim().isEmpty) {
      print("Nao pode ter mais de 1 caracter e nao pode ser vazia");
    }
  }

  set lado(double l) {
    if (l <= 0) {
      exit(1);
    }
    _lado = l;
  }

  double get lado => _lado;

  set caractere(String c) {
    if (c.length > 1 || c.trim().isEmpty) {
      exit(1);
    }
    _caractere = c;
  }

  String get caractere => _caractere;

  double calcularArea() {
    double area = _lado * _lado;
    return area;
  }

  double calcularPerimetro() {
    double perimetro = _lado * 4;
    return perimetro;
  }

  bool ehIgual(Quadrado quadrado2) {
    if (_lado == quadrado2._lado && _caractere == quadrado2._caractere) {
      return true;
    } else {
      return false;
    }
  }

  void desenhar() {
    for (int i = 0; i < _lado.toInt(); i++) {
      for (int j = 0; j < _lado.toInt(); j++) {
        stdout.write(_caractere);
      }
      print(" Linha $i");
    }
    print("");
  }

  void exibirResumo() {
    print('Lado: $_lado');
    print('Area: ${calcularArea()}');
    print('Perimetro ${calcularPerimetro()}');
  }
}
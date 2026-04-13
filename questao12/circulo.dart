import 'dart:io';

class Circulo {
  double _raio;
  String _cor;
  static const pi = 3.14;

  Circulo(this._raio, this._cor) {
    if (_raio <= 0) {
      throw ArgumentError("O raio tem que ser maior que 0");
    }
    if (_cor.trim().isEmpty) {
      throw ArgumentError("A cor nao pode ser vazia");
    }
  }

  set raio(double r) {
    if (r <= 0) {
      exit(1);
    }
    _raio = r;
  }

  double get raio => _raio;

  set cor(String c) {
    if (c.trim().isEmpty) {
      exit(1);
    }
    _cor = c;
  }

  String get cor => _cor;

  double calcularArea() {
    double area = pi * (_raio * _raio);
    return area;
  }

  double calcularPerimetro() {
    double perimetro = 2 * pi * _raio;
    return perimetro;
  }

  void exibirResumo() {
    print("O raio eh: $_raio");
    print("A cor eh: $_cor");
    print("A area do circulo eh ${calcularArea()}");
    print("O perimetro do circulo eh ${calcularPerimetro()}");
    print("");
  }
}
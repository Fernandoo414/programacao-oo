import 'dart:io';
import 'dart:math';

class Triangulo {
  double _lado1;
  double _lado2;
  double _lado3;
  String _caractere;

  Triangulo(this._lado1, this._lado2, this._lado3, this._caractere) {
    _validarTriangulo(_lado1, _lado2, _lado3);
    if (_caractere.isEmpty || _caractere.length > 1) {
      throw ArgumentError("O caractere deve ter exatamente 1 símbolo e não ser vazio.");
    }
  }

  void _validarTriangulo(double a, double b, double c) {
    if (a <= 0 || b <= 0 || c <= 0) {
      throw ArgumentError("Os lados devem ser maiores que 0.");
    }
    if (!(a + b > c && a + c > b && b + c > a)) {
      throw ArgumentError("Os lados informados não formam um triangulo valido.");
    }
  }

  set lado1(double v) {
    if (v <= 0) {
      exit(1);
    }
    _validarTriangulo(v, _lado2, _lado3);
    _lado1 = v;
  }

  double get lado1 => _lado1;

  set lado2(double v) {
    if (v <= 0) {
      exit(1);
    }
    _validarTriangulo(_lado1, v, _lado3);
    _lado2 = v;
  }

  double get lado2 => _lado2;

  set lado3(double v) {
    if (v <= 0) {
      exit(1);
    }
    _validarTriangulo(_lado1, _lado2, v);
    _lado3 = v;
  }

  double get lado3 => _lado3;

  set caractere(String c) {
    if (c.isEmpty || c.length > 1) {
      exit(1);
    }
    _caractere = c;
  }

  String get caractere => _caractere;

  double calcularPerimetro() => _lado1 + _lado2 + _lado3;

  double calcularArea() {
    double s = calcularPerimetro() / 2;
    return sqrt(s * (s - _lado1) * (s - _lado2) * (s - _lado3));
  }

  void desenharEsquerda() {
    print("\nDesenho à Esquerda:");
    for (int i = 1; i <= _lado1.toInt(); i++) {
      print(_caractere * i);
    }
  }

  void desenharCentralizado() {
    print("\nDesenho Centralizado:");
    int h = _lado1.toInt();
    for (int i = 1; i <= h; i++) {
      String espacos = " " * (h - i);
      String simbolos = _caractere * (2 * i - 1);
      print(espacos + simbolos);
    }
  }

  void exibirResumo() {
    print("----------------------------------");
    print("Lados: $_lado1, $_lado2, $_lado3");
    print("Perimetro: ${calcularPerimetro().toStringAsFixed(2)}");
    print("Area (Heron): ${calcularArea().toStringAsFixed(2)}");
    print("Caractere: $_caractere");
  }
}
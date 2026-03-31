import 'dart:math';

class Triangulo {
  double _lado1;
  double _lado2;
  double _lado3;
  String _caractere;

  // Construtor com as validações de restrição
  Triangulo(this._lado1, this._lado2, this._lado3, this._caractere) {
    _validarTriangulo(_lado1, _lado2, _lado3);
    if (_caractere.isEmpty || _caractere.length > 1) {
      throw "O caractere deve ter exatamente 1 símbolo e não ser vazio.";
    }
  }

  // Validação interna: a soma de dois lados deve ser maior que o terceiro
  void _validarTriangulo(double a, double b, double c) {
    if (a <= 0 || b <= 0 || c <= 0) throw "Os lados devem ser maiores que 0.";
    if (!(a + b > c && a + c > b && b + c > a)) {
      throw "Os lados informados não formam um triângulo válido.";
    }
  }

  // Métodos Acessores (Setters) para alterar as dimensões
  set lado1(double v) { _validarTriangulo(v, _lado2, _lado3); _lado1 = v; }
  set lado2(double v) { _validarTriangulo(_lado1, v, _lado3); _lado2 = v; }
  set lado3(double v) { _validarTriangulo(_lado1, _lado2, v); _lado3 = v; }

  double calcularPerimetro() => _lado1 + _lado2 + _lado3;

  double calcularArea() {
    double s = calcularPerimetro() / 2;
    return sqrt(s * (s - _lado1) * (s - _lado2) * (s - _lado3));
  }

  // Desenha alinhado à esquerda (usando a altura aproximada baseada no lado1)
  void desenharEsquerda() {
    print("\nDesenho à Esquerda:");
    for (int i = 1; i <= _lado1.toInt(); i++) {
      print(_caractere * i);
    }
  }

  // Desenha centralizado
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
    print("Perímetro: ${calcularPerimetro().toStringAsFixed(2)}");
    print("Área (Heron): ${calcularArea().toStringAsFixed(2)}");
    print("Caractere: $_caractere");
  }
}
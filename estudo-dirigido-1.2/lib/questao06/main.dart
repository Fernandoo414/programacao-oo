class Retangulo {
  double _largura;
  double _altura;

  Retangulo(this._largura, this._altura);

  Retangulo.vazio()
      : _largura = 1,
        _altura = 1;

  Retangulo.quadrado(double lado)
      : _largura = lado,
        _altura = lado;

  double area() => _largura * _altura;
  double perimetro() => 2 * (_largura + _altura);

  void exibir() {
    print("Area: ${area()} | Perimetro: ${perimetro()}");
  }
}
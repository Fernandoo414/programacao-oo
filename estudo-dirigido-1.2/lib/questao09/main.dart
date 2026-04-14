class Carro {
  String _modelo;
  int _km;

  Carro(this._modelo, this._km);

  void exibir() => print("$_modelo | KM: $_km");
}

class Oficina {
  void revisar(Carro c) {
    c._km += 100;
  }
}
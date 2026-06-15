import 'dart:io';

class Motor {
  int _potencia;
  String _tipo;

  Motor(this._potencia, this._tipo) {
    if (_potencia <= 0) {
      print("A potencia eh igual ou menor que 0");
    }
    if (_tipo.trim().isEmpty) {
      print("O tipo nao pode ser vazio");
    }
  }

  set potencia(int p) {
    if (p <= 0) {
      exit(1);
    }
    _potencia = p;
  }

  int get potencia => _potencia;

  set tipo(String t) {
    if (t.trim().isEmpty) {
      exit(1);
    }
    _tipo = t;
  }

  String get tipo => _tipo;
}

class Carro {
  String _modelo;
  Motor _motor;

  Carro(this._modelo, this._motor) {
    if (_modelo.trim().isEmpty) {
      print("O modelo nao pode ser vazio");
    }
  }

  set modelo(String m) {
    if (m.trim().isEmpty) {
      exit(1);
    }
    _modelo = m;
  }

  String get modelo => _modelo;

  set motor(Motor m) {
    _motor = m;
  }

  Motor get motor => _motor;

  void exibirMotor() {
    print("Potencia: ${_motor.potencia}");
    print("Tipo: ${_motor.tipo}");
  }

  void exibirCarro() {
    print("O modelo eh: $_modelo");
    exibirMotor();
  }
}
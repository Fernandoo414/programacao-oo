import 'dart:io';

class Data {
  int _dia;
  int _mes;
  int _ano;

  Data(this._dia, this._mes, this._ano) {
    if (_dia < 1 || _dia > 31) {
      throw ArgumentError('O dia deve estar entre 1 a 31');
    }
    if (_mes < 1 || _mes > 12) {
      throw ArgumentError('O mes deve estar entre 1 a 12 minutos');
    }
    if (_ano < 0) {
      throw ArgumentError('O ano deve ser maior que 0');
    }
  }

  set dia(int d) {
    if (d < 1 || d > 31) {
      exit(1);
    }
    _dia = d;
  }

  int get dia => _dia;

  set mes(int m) {
    if (m < 1 || m > 12) {
      exit(1);
    }
    _mes = m;
  }

  int get mes => _mes;

  set ano(int a) {
    if (a < 0) {
      exit(1);
    }
    _ano = a;
  }

  int get ano => _ano;

  void exibirData() {
    print('$_dia / $_mes / $_ano');
    print('---------------------');
  }
}
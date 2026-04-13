import 'dart:io';

class Relogio {
  int _hora;
  int _minuto;
  int _segundo;

  Relogio(this._hora, this._minuto, this._segundo) {
    if (_hora < 0 || _hora > 23) {
      print('A hora deve estar entre 0 a 23 horas');
    }
    if (_minuto < 0 || _minuto > 59) {
      print('Os minutos devem estar entre 0 a 59 minutos');
    }
    if (_segundo < 0 || _segundo > 59) {
      print('Os segundos devem estar entre 0 a 59 segundos');
    }
  }

  // hora
  set hora(int h) {
    if (h < 0 || h > 23) {
      exit(1);
    }
    _hora = h;
  }

  int get hora => _hora;

  // minuto
  set minuto(int m) {
    if (m < 0 || m > 59) {
      exit(1);
    }
    _minuto = m;
  }

  int get minuto => _minuto;

  // segundo
  set segundo(int s) {
    if (s < 0 || s > 59) {
      exit(1);
    }
    _segundo = s;
  }

  int get segundo => _segundo;

  void exibirHorario() {
    print(' HH: $_hora MM: $_minuto SS: $_segundo');
    print('--------------------------');
  }
}
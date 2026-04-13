import 'dart:io';

class Aluno {
  String _nome;
  double _nota1;
  double _nota2;

  Aluno(this._nome, this._nota1, this._nota2) {
    if (_nome.trim().isEmpty) {
      print('O nome nao pode ser vazio');
    }
    if (_nota1 < 0 || _nota1 > 10) {
      print('A nota1 deve estar entre 0 e 10');
    }
    if (_nota2 < 0 || _nota2 > 10) {
      print('A nota2 deve estar entre 0 e 10');
    }
  }

  set nome(String n) {
    if (n.trim().isEmpty) {
      exit(1);
    }
    _nome = n;
  }

  String get nome => _nome;

  set nota1(double n1) {
    if (n1 < 0 || n1 > 10) {
      exit(1);
    }
    _nota1 = n1;
  }

  double get nota1 => _nota1;

  set nota2(double n2) {
    if (n2 < 0 || n2 > 10) {
      exit(1);
    }
    _nota2 = n2;
  }

  double get nota2 => _nota2;

  double calcularMedia() {
    return (_nota1 + _nota2) / 2;
  }

  String verificarAprovacao() {
    if (calcularMedia() >= 6) {
      return 'Aprovado';
    } else {
      return 'Reprovado';
    }
  }

  void exibirBoletim() {
    print('Nome: $_nome');
    print('Nota1: $_nota1');
    print('Nota2: $_nota2');
    print('Media: ${calcularMedia()}');
    print('Situacao: ${verificarAprovacao()}');
    print('-----------------------------');
  }
}
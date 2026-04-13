import 'dart:io';
import '../questao08/endereco.dart';

class Pessoa {
  String _nome;
  int _idade;
  String _cpf;
  Endereco _endereco;

  Pessoa(this._nome, this._idade, this._cpf, this._endereco) {
    if (_nome.trim().isEmpty) {
      print("O nome nao pode ser vazio");
    }
    if (_idade < 0) {
      print("A idade deve ser maior ou igual a 0");
    }
    if (_cpf.trim().isEmpty) {
      print("O CPF nao pode ser vazio");
    }
  }

  set nome(String n) {
    if (n.trim().isEmpty) {
      exit(1);
    }
    _nome = n;
  }

  String get nome => _nome;

  set idade(int i) {
    if (i < 0) {
      exit(1);
    }
    _idade = i;
  }

  int get idade => _idade;

  set cpf(String c) {
    if (c.trim().isEmpty) {
      exit(1);
    }
    _cpf = c;
  }

  String get cpf => _cpf;

  set endereco(Endereco e) {
    _endereco = e;
  }

  Endereco get endereco => _endereco;

  void exibirPessoa() {
    print("==================================");
    print("DADOS DO CLIENTE");
    print("Nome: $_nome");
    print("Idade: $_idade anos");
    print("CPF: $_cpf");
    _endereco.exibirEndereco();
  }
}
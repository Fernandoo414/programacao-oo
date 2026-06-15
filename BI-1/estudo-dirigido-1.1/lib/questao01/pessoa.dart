class Pessoa {
  String _nome;
  int _idade;

  Pessoa(this._nome, this._idade) {
    if (_nome.trim().isEmpty) {
      print('O nome não pode ser vazio.');
    }
    if (_idade < 0) {
      print('A idade deve ser maior ou igual a 0.');
    }
  }

  String get nome => _nome;

  set nome(String novoNome) {
    if (novoNome.trim().isEmpty) {
      print('O nome não pode ser vazio.');
    }
    _nome = novoNome;
  }

  int get idade => _idade;

  set idade(int novaIdade) {
    if (novaIdade < 0) {
      print('A idade deve ser maior ou igual a 0.');
    }
    _idade = novaIdade;
  }

  void exibirDados() {
    print('Nome: $_nome');
    print('Idade: $_idade');
    print('----------------------');
  }
}
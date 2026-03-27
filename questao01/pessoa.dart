class Pessoa {
  String nome;
  int idade;

  // Construtor com validação
  Pessoa(this.nome, this.idade) {
    if (nome.trim().isEmpty) {
      throw ArgumentError('O nome não pode ser vazio.');
    }
    if (idade < 0) {
      throw ArgumentError('A idade deve ser maior ou igual a 0.');
    }
  }

  // Método para exibir dados
  void exibirDados() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('----------------------');
  }
}
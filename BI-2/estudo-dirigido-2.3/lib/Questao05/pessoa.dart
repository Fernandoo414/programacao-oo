abstract class Pessoa {
  String nome;
  int idade;
  String tipoDaPessoa;

  Pessoa(this.nome, this.idade, this.tipoDaPessoa);
  void exibirDados() {
    print('Nome:$nome');
    print('Idade:$idade');
  }
}

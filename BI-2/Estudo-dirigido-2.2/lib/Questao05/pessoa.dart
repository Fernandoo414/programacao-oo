//Crie uma classe abstrata Pessoa com os atributos nome e idade. V
//A classe deve possuir construtor e declarar o método abstrato exibirDados(). V
//Depois, crie a classe Aluno, que herda de Pessoa e adiciona os atributos matricula e curso.V
//Sobrescreva exibirDados() para mostrar todos os dados do aluno.

abstract class Pessoa {
  String nome;
  int idade;

  //contrutor do veiculo

  Pessoa(this.nome, this.idade);
  void exibirDados() {
    print('Nome:$nome');
    print('Idade:$idade');
  }
}



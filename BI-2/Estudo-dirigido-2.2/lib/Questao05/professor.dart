import 'pessoa.dart';

//Crie também uma nova classe filha chamada Professor, que herda de Pessoa e adiciona os atributos disciplina e salario.
//Sobrescreva exibirDados() para mostrar todos os dados do professor.

class Professor extends Pessoa {
  String diciplina;
  double salario;

  Professor(String nome, int idade, this.diciplina, this.salario)
    : super(nome, idade);

  @override
  void exibirDados() {
    super.exibirDados();
    print('Diciplina Ministrada: $diciplina');
    print('Salário do Professor: R\$ ${salario.toStringAsFixed(2)}');
  }
}

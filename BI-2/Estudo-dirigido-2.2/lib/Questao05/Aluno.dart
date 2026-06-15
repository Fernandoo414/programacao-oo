import 'pessoa.dart';

class Aluno extends Pessoa {
  double matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso)
    : super(nome, idade);

  @override
  void exibirDados() {
    super.exibirDados();
    print('Numero da matricula: $matricula');
    print('Seu Curso: $curso');
  }
}
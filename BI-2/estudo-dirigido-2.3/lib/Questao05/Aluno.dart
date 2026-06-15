import 'pessoa.dart';
import 'aprensentavel.dart';

class Aluno extends Pessoa implements Aprensentavel {
  String matricula;
  String curso;

  Aluno(String nome, int idade, String tipoDaPessoa, this.matricula, this.curso)
    : super(nome, idade, tipoDaPessoa);

  @override
  String toString() {
    return 'Nome: $nome | Idade: $idade |Tipo da Pessoa: $tipoDaPessoa| Matricula: $matricula|Curso: $curso';
  }
}

import 'pessoa.dart';
import 'aprensentavel.dart';

class Professor extends Pessoa implements Aprensentavel {
  String diciplina;
  double salario;

  Professor(String nome, int idade, String tipoDaPessoa , this.diciplina, this.salario)
    : super(nome, idade, tipoDaPessoa);

  @override
  String toString() {
    return 'Nome: $nome | Idade: $idade |Tipo da Pessoa: $tipoDaPessoa| Diciplina: $diciplina|Salario: $salario';
  }
}

import 'pessoa.dart';
import 'aprensentavel.dart';

class Coordenador extends Pessoa implements Aprensentavel {
  String area;
  String tempoExperiencia;

  Coordenador(
    String nome,
    int idade,
    String tipoDaPessoa,
    this.area,
    this.tempoExperiencia,
  ) : super(nome, idade, tipoDaPessoa);

  @override
  String toString() {
    return 'Nome: $nome | Idade: $idade |Tipo da Pessoa: $tipoDaPessoa| Aréa: $area|Tempo de Experiencia: $tempoExperiencia';
  }
}

import 'Aluno.dart';
import 'professor.dart';
import 'aprensentavel.dart';
import 'coordenador.dart';
import 'listaGenerica.dart';

void main() {
  var aluna01 = Aluno('Ana', 19, 'Aluna', 'A001', 'ADS');
  var aluno02 = Aluno('Bruno', 22, 'Aluno', 'A002', 'Emgenharia de Software');
  var professora01 = Professor('Carla', 38, 'Professora', 'POO', 2000.00);
  var professor02 = Professor(
    'Diego',
    41,
    'Professor',
    'Banco de Dados',
    1900.00,
  );
  var coordenador = Coordenador(
    'Elisa',
    45,
    'Coordenadora',
    'Área Tecnologia',
    '15 anos de Experiência',
  );

  var pessoa = ListaGenerica<Aprensentavel>();
  pessoa.adicionar(aluna01);
  pessoa.adicionar(aluno02);
  pessoa.adicionar(professora01);
  pessoa.adicionar(professor02);
  pessoa.adicionar(coordenador);

  pessoa.imprimirItens(); 

  for (var pessoa in pessoa.itens) {
    pessoa.exibirDados();
  }
}

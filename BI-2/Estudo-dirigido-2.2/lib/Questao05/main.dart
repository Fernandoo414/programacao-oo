import 'Aluno.dart';
import 'professor.dart';

//No main(), crie um aluno e um professor. Chame exibirDados() para os dois objetos.

void main() {
  var aluno = Aluno('Leonardo', 18, 2022179970, 'Gestão de Redes');

  var professor = Professor('Luiz Altamir', 48, 'Gestão de Redes', 60000);

  print('====Dados Do Aluno====');
  aluno.exibirDados();
  print('====Dados Do Professor====');
  professor.exibirDados();
}

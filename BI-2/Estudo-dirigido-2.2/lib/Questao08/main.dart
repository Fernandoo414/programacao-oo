import 'LivroDigital.dart';
import 'livroFisico.dart';
//No main(), crie um livro digital e um livro físico. Chame exibirInformacoes() para os dois objetos.

void main() {
  var livroDigital = LivroDigital('As Crônicas de Narnia', 'Adam Smith', 100);
  var livroFisico = LivroFisico('Percy Jackson', 'Robert Downey Jr', 300);
  print('====Informaçoes Livro Digital====');
  livroDigital.exibirInformacoes();
  print('====Informaçoes Livro Fisico====');
  livroFisico.exibirInformacoes();
}

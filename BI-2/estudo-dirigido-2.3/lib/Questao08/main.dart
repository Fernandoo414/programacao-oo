import 'LivroDigital.dart';
import 'audiobook.dart';
import 'livroFisico.dart';
import 'Informativo.dart';
import 'listaGenerica.dart';


void main() {
  var livro01 = LivroFisico('Clean Code', 'Robert Martin', 'livro físico', 425);
  var livro02 = LivroDigital('Dart Básico', 'Mariana Souza', 'livro digital', 12);
  var livro03 = Audiobook('POO na Prática','Carlos Lima', 'audiobook', 180);
  var livro04 = LivroFisico('Algoritmos Modernos', 'Ana Torres', 'livro físico', 350);
  var livro05 = LivroDigital('Flutter Essencial', 'Pedro Alves', 'livro digital', 25);


  var livro = ListaGenerica<Informativo>();
  livro.adicionar(livro01);
  livro.adicionar(livro02);
  livro.adicionar(livro03);
  livro.adicionar(livro04);
  livro.adicionar(livro05);

  livro.imprimirItens();

  for (var livro in livro.itens) {
    livro.exibirInformacoes();
  }
}

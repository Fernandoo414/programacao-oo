import 'livro.dart';
import 'Informativo.dart';

class LivroDigital extends Livro implements Informativo {
  int tamanho_do_arquivo;

  LivroDigital(
    String Titulo,
    String Autor,
    String TipoDeLivro,
    this.tamanho_do_arquivo,
  ) : super(Titulo, Autor, TipoDeLivro);

  @override
  String toString() {
    return 'Titulo: $Titulo | Autor: $Autor | Tipode Livro: $TipoDeLivro | Tamnho do Arquivo: $tamanho_do_arquivo MB';
  }
}

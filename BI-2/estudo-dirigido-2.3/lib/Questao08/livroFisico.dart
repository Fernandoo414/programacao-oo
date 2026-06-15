import 'livro.dart';
import 'Informativo.dart';

class LivroFisico extends Livro implements Informativo {
  int QTD_Paginas;

  LivroFisico(String Titulo, String Autor, String TipoDeLivro, this.QTD_Paginas)
    : super(Titulo, Autor, TipoDeLivro);

  @override
  String toString() {
    return 'Titulo: $Titulo | Autor: $Autor | Tipode Livro: $TipoDeLivro | Quantidade de Paginas: $QTD_Paginas Páginas ';
  }
}


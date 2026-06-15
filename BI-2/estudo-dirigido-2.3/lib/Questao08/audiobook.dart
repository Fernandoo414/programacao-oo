import 'Informativo.dart';
import 'livro.dart';

class Audiobook extends Livro implements Informativo {
  int DuracaoMinutos;

  Audiobook(
    String Titulo,
    String Autor,
    String TipoDeLivro,
    this.DuracaoMinutos,
  ) : super(Titulo, Autor, TipoDeLivro);

  @override
  String toString() {
    return 'Titulo: $Titulo | Autor: $Autor | Tipode Livro: $TipoDeLivro | Duração : $DuracaoMinutos minutos';
  }
}

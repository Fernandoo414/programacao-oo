import 'livro.dart';

//Crie também a classe LivroFisico, que herda de Livro e implementa Informativo.
//Essa classe deve possuir o atributo quantidadePaginas.

class LivroFisico extends Livro implements Informativo {
  int QTD_Paginas;

  LivroFisico(String Titulo, String Autor, this.QTD_Paginas)
    : super(Titulo, Autor);

  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print('Quantidades de Paginas: $QTD_Paginas paginas');
  }
}

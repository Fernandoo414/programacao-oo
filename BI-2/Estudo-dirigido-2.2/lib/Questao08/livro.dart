//Crie uma classe Livro com os atributos titulo e autor.
class Livro {
  String Titulo;
  String Autor;

  Livro(this.Titulo, this.Autor);

  void exibirInformacoes() {
    print('Nome do livro: $Titulo');
    print('Nome do Autor: $Autor');
  }
}

//Depois, crie uma interface chamada Informativo, com o método exibirInformacoes().
abstract class Informativo {
  void exibirInformacoes();
}


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

class Livro {
  String Titulo;
  String Autor;
  String TipoDeLivro;

  Livro(this.Titulo, this.Autor, this.TipoDeLivro);

  void exibirInformacoes() {
    print('Nome do livro: $Titulo');
    print('Nome do Autor: $Autor');
  }
}

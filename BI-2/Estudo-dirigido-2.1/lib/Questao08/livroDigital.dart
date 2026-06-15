import 'livro.dart';

//Depois, crie uma classe LivroDigital que herda de Livro e adiciona tamanhoArquivo.
//Sobrescreva exibirInformacoes() para mostrar também o tamanho do arquivo.
class LivroDigital extends Livro {
  int tamanho_do_arquivo;

  LivroDigital(String Titulo, String Autor, this.tamanho_do_arquivo)
    : super(Titulo, Autor);

  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print('Tamanho do Arquivo $tamanho_do_arquivo');
  }
}

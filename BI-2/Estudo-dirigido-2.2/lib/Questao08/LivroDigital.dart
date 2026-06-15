import 'livro.dart';

//Crie a classe LivroDigital, que herda de Livro, adiciona o atributo tamanhoArquivo e implementa Informativo.V
//No método exibirInformacoes(), mostre o título, o autor e o tamanho do arquivo.V
class LivroDigital extends Livro implements Informativo {
  int tamanho_do_arquivo;

  LivroDigital(String Titulo, String Autor, this.tamanho_do_arquivo)
    : super(Titulo, Autor);

  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print('Tamanho do Arquivo: $tamanho_do_arquivo');
  }
}

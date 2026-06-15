import 'produto.dart';
//Aqui esta a classe produto perecivel que herda as caracteristicas de "produto" atraves de "extends" e adiciona o atributo dataValidade
class ProdutoPerecivel extends Produto {
  String dataValidade;
  ProdutoPerecivel(String nome, double preco, this.dataValidade)
    : super(nome, preco);
  // Aqui atraves do override vai sobrescrever o metodo exibir (void exibir())
  @override
  void exibir() {
    super.exibir();
    print('Data de validade: $dataValidade');
  }
}
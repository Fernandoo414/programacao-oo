import 'produto.dart';

class ProdutoEletronico extends Produto implements Exibivel {
  String garantiaMeses;

  ProdutoEletronico(String nome, double preco, this.garantiaMeses)
    : super(nome, preco);

  @override
  void exibir() {
    print(
      'Nome $nome | Preço do Produto R\$ $preco | Prazo de Garantia do Produto $garantiaMeses',
    );
  }

  @override
  String toString() {
    return 'Nome $nome | Preço do Produto R\$ $preco | Prazo de Garantia do Produto $garantiaMeses';
  }
}

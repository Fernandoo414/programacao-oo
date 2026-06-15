import 'produto.dart';

class ProdutoPerecivel extends Produto implements Exibivel {
  String dataValidade;
  ProdutoPerecivel(String nome, double preco, this.dataValidade)
    : super(nome, preco);

  @override
  void exibir() {
    print(
      'Produto perecível |Nome $nome | Preço do Produto R\$ $preco | Data de validade: $dataValidade',
    );
  }

  @override
  String toString() {
    return 'Produto perecível |Nome R\$ $nome | Preço do Produto $preco | Data de validade: $dataValidade';
  }
}

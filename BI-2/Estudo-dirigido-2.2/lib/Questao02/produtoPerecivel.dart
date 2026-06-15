import 'produto.dart';

class ProdutoPerecivel extends Produto implements Exibivel {
  String dataValidade;
  ProdutoPerecivel(String nome, double preco, this.dataValidade)
    : super(nome, preco);
  @override
  void exibir() {
    print('Produto perecível');
    print('Nome: $nome');
    print('Preço: R\$ $preco');
    print('Data de validade: $dataValidade');
  }
}
//Aqui esta a classe produto "nome,preço"
class Produto {
  String nome;
  double preco;
  //Aqui tem o construtor de produto
  Produto(this.nome, this.preco);
  // Aqui é uma forma de exibir os dados da classe produto
  void exibir() {
    print('Nome: $nome');
    print('Preço: R\$ $preco');
  }
}



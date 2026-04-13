class Produto {
  String _nome;
  double _preco;

  Produto(this._nome, this._preco) {
    if (_nome.isEmpty) throw "O nome do produto não pode ser vazio.";
    if (_preco <= 0) throw "O preço deve ser maior que 0.";
  }

  // Getters para o Pedido conseguir ler os dados
  String get nome => _nome;
  double get preco => _preco;
}
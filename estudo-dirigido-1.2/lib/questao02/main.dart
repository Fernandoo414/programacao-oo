class Produto {
  String _nome;
  double _preco;
  int _estoque;

  Produto(this._nome, this._preco, this._estoque);

  void repor(int qtd) => _estoque += qtd;

  void vender(int qtd) {
    if (qtd <= _estoque) {
      _estoque -= qtd;
    }
  }

  void exibirFicha() {
    print("$_nome | R\$$_preco | Estoque: $_estoque");
  }
}

void main() {
  var p = Produto("Mouse", 50, 10);
  p.vender(2);
  p.exibirFicha();
}
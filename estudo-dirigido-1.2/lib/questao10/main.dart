class Caixa {
  int _valor;

  Caixa(this._valor);

  void exibir() {
    print("Valor: $_valor");
  }
}

void alterarValor(Caixa c) {
  c._valor = 999;
}

void trocarCaixa(Caixa c) {
  c = Caixa(0);
}

void main() {
  var caixa = Caixa(10);

  caixa.exibir();
  alterarValor(caixa);
  caixa.exibir();

  trocarCaixa(caixa);
  caixa.exibir();
}
class Carteira {
  double saldo;

  Carteira(this.saldo);
}

class Pessoa {
  String nome;
  Carteira carteira;

  Pessoa(this.nome, this.carteira);
}

void main() {
  Pessoa? p1 = Pessoa("Leo", Carteira(100));
  Pessoa? p2 = p1;

  print("Antes:");
  print(p1!.carteira.saldo);

  // altera usando p2
  p2!.carteira.saldo = 50;

  print("Depois:");
  print(p1.carteira.saldo);

  // removendo referências
  p2 = null;
  print("p2 = null");

  p1 = null;
  print("p1 = null");
}
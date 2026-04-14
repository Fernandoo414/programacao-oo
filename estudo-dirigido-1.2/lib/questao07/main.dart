class Personagem {
  String _nome;
  int _vida;
  int _energia;

  Personagem(this._nome, this._vida, this._energia);

  void exibir() {
    print("$_nome | Vida: $_vida | Energia: $_energia");
  }

  void setVida(int v) => _vida = v;
}

void main() {
  var p1 = Personagem("Heroi", 100, 50);
  var p2 = p1;

  p1.exibir();
  p2.setVida(10);
  p1.exibir();
}
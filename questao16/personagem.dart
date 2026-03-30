class Personagem {
  String nome;
  int vida;
  int ataque;

  Personagem(this.nome, this.vida, this.ataque) {
    if (nome.isEmpty) {
      throw ArgumentError("O nome não pode ser vazio.");
    }
    if (vida <= 0) {
      throw ArgumentError("A vida deve ser maior que 0.");
    }
    if (ataque <= 0) {
      throw ArgumentError("O ataque deve ser maior que 0.");
    }
  }

  bool estaVivo() {
    return vida > 0;
  }

  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print("$nome não pode atacar porque está morto.");
      return;
    }

    if (!inimigo.estaVivo()) {
      print("$nome tentou atacar ${inimigo.nome}, mas ele já está morto.");
      return;
    }

    inimigo.vida -= ataque;

    if (inimigo.vida < 0) {
      inimigo.vida = 0;
    }

    print("$nome atacou ${inimigo.nome} causando $ataque de dano!");
  }

  void exibirStatus() {
    print("Nome: $nome | Vida: $vida | Ataque: $ataque");
  }
}
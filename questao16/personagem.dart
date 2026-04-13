class Personagem {
  String _nome;
  int _vida;
  int _ataque;

  Personagem(this._nome, this._vida, this._ataque) {
    if (_nome.trim().isEmpty) {
      throw ArgumentError("O nome nao pode ser vazio");
    }
    if (_vida <= 0) {
      throw ArgumentError("A vida tem que ser maior que 0");
    }
    if (_ataque <= 0) {
      throw ArgumentError("O ataque deve ser maior que 0");
    }
  }

  set nome(String n) {
    if (n.trim().isEmpty) {
      throw ArgumentError("O nome nao pode ser vazio");
    }
    _nome = n;
  }

  String get nome => _nome;

  set vida(int v) {
    if (v < 0) {
      throw ArgumentError("A vida nao pode ser negativa");
    }
    _vida = v;
  }

  int get vida => _vida;

  set ataque(int a) {
    if (a <= 0) {
      throw ArgumentError("O ataque deve ser maior que 0");
    }
    _ataque = a;
  }

  int get ataque => _ataque;

  bool estaVivo() {
    return _vida > 0;
  }

  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      return;
    }

    inimigo._vida -= _ataque;

    if (inimigo._vida < 0) {
      inimigo._vida = 0;
    }
  }

  void exibirStatus() {
    print("Nome do personagem: $_nome");
    print("Vida: $_vida");
    print("Ataque: $_ataque");
  }
}
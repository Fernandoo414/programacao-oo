class Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) {
      throw Exception('Nome não pode ser vazio');
    }

    if (vida < 0) {
      throw Exception('Vida não pode ser negativa');
    }

    if (nivel < 1) {
      throw Exception('Nivel deve ser maior ou igual a 1');
    }
  }

  void exibirStatus() {
    print('Nome: $nome');
    print('Vida: $vida');
    print('Nivel: $nivel');
  }

  void receberDano(int dano) {
    vida -= dano;

    if (vida < 0) {
      vida = 0;
    }

    print('$nome recebeu $dano de dano');
  }

  bool estaVivo() {
    return vida > 0;
  }
}





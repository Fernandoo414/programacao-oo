abstract class Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) {
      throw Exception(
        'Nome não pode ser vazio',
      ); //substituir por print + retunr
    }

    if (vida < 0) {
      throw Exception('Vida não pode ser negativa');
    }

    if (nivel < 1) {
      throw Exception('Nivel deve ser maior ou igual a 1');
    }
  }

  void exibirStatus();

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

 @override
 String toString() {
 return ' [$runtimeType] | Nome: $nome | Vida: $vida | Nivel $nivel';
 }
  
}

abstract class Atacavel {
  void atacar(Personagem alvo);
}

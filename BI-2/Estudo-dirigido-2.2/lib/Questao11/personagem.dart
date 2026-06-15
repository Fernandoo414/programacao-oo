//Classe abstrata Personagem v
//Crie uma classe abstrata Personagem para representar qualquer personagem do sistema.v
//Essa classe deve possuir nome, vida e nível. v
//O nome não pode ser vazio. A vida não pode ser negativa.v
//O nível deve ser maior ou igual a 1. v
//A classe deve permitir que qualquer personagem receba dano e verifique se ainda está vivo.v
//Ao receber dano, a vida deve ser reduzida, mas nunca pode ficar abaixo de zero. v
//Um personagem está vivo quando sua vida é maior que zero. v
//A classe Personagem também deve obrigar suas classes filhas a implementarem uma forma própria de exibir o status do personagem.v
abstract class Personagem {
  String nome; //privatizar atributos
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) {
      throw Exception('Nome não pode ser vazio'); //substituir por print + retunr
    }

    if (vida < 0) {
      throw Exception('Vida não pode ser negativa');
    }

    if (nivel < 1) {
      throw Exception('Nivel deve ser maior ou igual a 1');
    }
  }

  //faltam getter e setters

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
}

//Interface Atacavel V
//Crie uma interface chamada Atacavel. V
//Essa interface deve definir que uma classe atacável precisa possuir um comportamento de ataque contra outro personagem.V
//Toda classe que implementar essa interface deverá obrigatoriamente saber atacar um personagem.
abstract class Atacavel {
  void atacar(Personagem alvo);
}









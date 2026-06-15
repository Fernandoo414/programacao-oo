//Questão 7
//Crie uma classe Animal com nome e método emitirSom().
//Depois, crie uma classe Cachorro que herda de Animal e sobrescreve emitirSom() para mostrar "au au" específica.
//Faça o mesmo para classe Gato e Passaro.
//No main(), crie um objeto para cada animal e mande todos emitirem som.

class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom() {
    print('O animal faz um som');
  }
}






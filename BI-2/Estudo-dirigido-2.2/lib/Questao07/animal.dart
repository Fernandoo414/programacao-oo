//Crie uma classe abstrata Animal com o atributo nome e o método abstrato emitirSom().V
//Depois, crie as classes Cachorro, Gato e Passaro, todas herdando de Animal.
//Cada classe deve sobrescrever emitirSom() com uma mensagem específica:
//- Cachorro: “au au”
//- Gato: “miau”
//- Passaro: “piu piu”
abstract class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom() {
    print('O animal faz um som');
  }
}







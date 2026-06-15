//Crie uma classe Ingresso com os atributos evento e valor. V
class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);

  void exibirResumo() {
    print('Evento,$evento');
    print('Valor do ingresso,$valor');
  }
}

//Depois, crie uma interface chamada Calculavel, com o método double valorFinal().
abstract class Calculavel {
  double valorFinal();
}




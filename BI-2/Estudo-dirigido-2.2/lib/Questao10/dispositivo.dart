//Crie uma classe Dispositivo com os atributos marca e modelo. V

class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);

  void metodoLigar() {
    print('Marca do Smartphone, $marca');
    print('Modelo do Smartphone, $modelo');
  }
}

//Depois, crie uma interface chamada Ligavel, com os métodos ligar() e desligar().

abstract class Ligavel {
  void ligar();
  void desligar();
}




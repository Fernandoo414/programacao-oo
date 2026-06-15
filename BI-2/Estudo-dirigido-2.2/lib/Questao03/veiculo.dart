//Crie uma classe abstrata Veiculo com os atributos marca, modelo e ano.
//A classe deve possuir construtor e declarar o método abstrato exibirFicha().
//Depois, crie a classe Carro, que herda de Veiculo e adiciona o atributo quantidadePortas.
//Sobrescreva exibirFicha() para mostrar todos os dados do carro.

abstract class Veiculo {
  String marca;
  String modelo;
  int ano;

  //contrutor do veiculo
  Veiculo(this.marca, this.modelo, this.ano);
  void exibirFicha() {
    print('Marca,$marca');
    print('Modelo,$modelo');
    print('Ano,$ano');
  }
}




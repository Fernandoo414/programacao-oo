import 'veiculo.dart';

//Crie também uma nova classe filha chamada Moto, que herda de Veiculo e adiciona o atributo cilindradas.
//Sobrescreva exibirFicha() para mostrar todos os dados da moto.
//No main(), crie um carro e uma moto. Chame exibirFicha() para os dois objetos
class Moto extends Veiculo {
  int QTD_cilindradas;

  Moto(String marca, String modelo, int ano, this.QTD_cilindradas)
    : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Quantidade de celindradas da moto : $QTD_cilindradas');
  }
}
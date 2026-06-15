import 'veiculo.dart';

class Carro extends Veiculo {
  String Qtds_de_portas;

  Carro(String marca, String modelo, int ano, this.Qtds_de_portas)
    : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    super.exibirFicha();
    print('Quantidade de Portas: $Qtds_de_portas');
  }
}
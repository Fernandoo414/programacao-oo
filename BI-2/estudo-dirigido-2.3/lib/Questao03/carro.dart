import 'Fichavel.dart';
import 'veiculo.dart';

class Carro extends Veiculo implements Fichavel {
  String Qtds_de_portas;

  Carro(String marca, String modelo, int ano,String tipo_do_veiculo, this.Qtds_de_portas)
    : super(marca, modelo, ano , tipo_do_veiculo);

 
 @override
  String toString() {
    return '${super.toString()} | Quantidade de Portas : $Qtds_de_portas'; 
  }

  void exibirFicha() {
    print(toString()); 
  }
}
import 'veiculo.dart';
import 'Fichavel.dart';


class Moto extends Veiculo implements Fichavel{
  String QTD_cilindradas;

  Moto(String marca, String modelo, int ano , String tipo_do_veiculo, this.QTD_cilindradas)
    : super(marca, modelo, ano, tipo_do_veiculo);

 
 @override
  String toString() {
    return '${super.toString()} | Cilindradas: $QTD_cilindradas'; 
  }

  void exibirFicha() {
    print(toString()); 
  }
}
import 'veiculo.dart';
import 'Fichavel.dart';

class Caminhao extends Veiculo implements Fichavel{
  String capacidadeDeCarga;

  Caminhao(String marca, String modelo, int ano,String tipo_do_veiculo, this.capacidadeDeCarga)
    : super(marca, modelo, ano,tipo_do_veiculo);

 
 @override
  String toString() {
    return '${super.toString()} | Capacidade De Carga  : $capacidadeDeCarga'; 
  }

  void exibirFicha() {
    print(toString()); 
  }
}
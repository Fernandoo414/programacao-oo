import 'dispositivo.dart';
import 'ligavel.dart';

class Televisao extends Dispositivo implements Ligavel {
  String tamanhoPolegadas;

  Televisao(
    String marca,
    String modelo,
    tipoDeDispositivo,
    this.tamanhoPolegadas,
  ) : super(marca, modelo, tipoDeDispositivo);
  
  @override
  void ligar() {
    print('Televisao $marca $modelo ligado.');
  }

  @override
  void desligar() {
    print('Televisao $marca $modelo desligado.');
  }

  @override
  String toString() {
    return 'Marca: $marca |Modelo: $modelo |Tipo do dispositivo $tipoDeDispositivo |Tamanho em Polegadas: $tamanhoPolegadas ';
  }
}

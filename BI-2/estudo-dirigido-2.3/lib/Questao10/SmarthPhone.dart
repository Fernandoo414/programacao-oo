import 'dispositivo.dart';
import 'ligavel.dart';

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(
    String marca,
    String modelo,
    String tipoDeDispositivo,
    this.sistemaOperacional,
  ) : super(marca, modelo, tipoDeDispositivo);

  @override
  void ligar() {
    print('Smartphone $marca $modelo ligado.');
  }

  @override
  void desligar() {
    print('Smartphone $marca $modelo desligado.');
  }

  @override
  String toString() {
    return 'Marca: $marca |Modelo: $modelo |Tipo do dispositivo $tipoDeDispositivo |Sistema Operacional: $sistemaOperacional ';
  }
}

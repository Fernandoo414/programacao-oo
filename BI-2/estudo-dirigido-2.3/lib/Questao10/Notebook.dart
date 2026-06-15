import 'dispositivo.dart';
import 'ligavel.dart';

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(
    String marca,
    String modelo,
    String tipoDeDispositivo,
    this.memoriaRam,
  ) : super(marca, modelo, tipoDeDispositivo);

  @override
  void ligar() {
    print('Notebook $marca $modelo ligado.');
  }

  @override
  void desligar() {
    print('Notebook $marca $modelo desligado.');
  }

  @override
  String toString() {
    return 'Marca: $marca |Modelo: $modelo |Tipo do dispositivo $tipoDeDispositivo |Memória ${memoriaRam} GB de RAM ';
  }
}

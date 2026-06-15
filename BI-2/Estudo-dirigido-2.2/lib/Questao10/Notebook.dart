import 'dispositivo.dart';

//Crie também a classe Notebook, que herda de Dispositivo e implementa Ligavel.
//Ela deve possuir o atributo memoriaRam.

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam) : super(marca, modelo);
  @override
  void ligar() {
    print('Notebook ligando...');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Memória RAM: ${memoriaRam}GB DDR4');
  }

  @override
  void desligar() {
    print('Notebook desligando...');
  }
}

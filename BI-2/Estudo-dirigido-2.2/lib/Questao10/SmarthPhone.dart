import 'dispositivo.dart';

//Crie a classe Smartphone, que herda de Dispositivo, adiciona o atributo sistemaOperacional e implementa Ligavel.
//No método ligar(), mostre uma mensagem específica informando que o smartphone está ligando.
//No método desligar(), mostre uma mensagem informando que o smartphone está desligando.
//Crie também a classe Notebook, que herda de Dispositivo e implementa Ligavel.
//Ela deve possuir o atributo memoriaRam.
class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional)
    : super(marca, modelo);

  @override
  void ligar() {
    print('Smartphone ligando...');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Sistema Operacional: $sistemaOperacional');
  }

  @override
  void desligar() {
    print('Smartphone desligando...');
  }
}

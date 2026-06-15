import 'dispositivo.dart';

//Depois, crie uma classe Smartphone que herda de Dispositivo e adiciona sistemaOperacional.
//Sobrescreva o método  ligar() para mostrar uma mensagem específica.

class Smartphone extends Dispositivo {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional)
    : super(marca, modelo);

  @override
  void metodoLigar() {
    super.metodoLigar();
    print('Meu Iphone é melhor que seu android');
  }
}

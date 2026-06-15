//Crie uma classe Dispositivo com marca, modelo e método ligar().

class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);

  void metodoLigar() {
    print('Marca do Smartphone, $marca');
    print('Modelo do Smartphone, $modelo');
  }
}

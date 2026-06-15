class Dispositivo {
  String marca;
  String modelo;
  String tipoDeDispositivo;

  Dispositivo(this.marca, this.modelo, this.tipoDeDispositivo);

  void metodoLigar() {
    print('Marca do Smartphone, $marca');
    print('Modelo do Smartphone, $modelo');
  }
}

class Televisao {
  int _canal = 1;
  int _volume = 10;

  void exibir() {
    print("Canal: $_canal | Volume: $_volume");
  }
}

class ControleRemoto {
  Televisao tv;

  ControleRemoto(this.tv);

  void aumentarVolume() => tv._volume++;
  void diminuirVolume() => tv._volume--;
  void proximoCanal() => tv._canal++;
  void canalAnterior() => tv._canal--;
}
import 'musica.dart';

void main() {
  var m1 = Musica("And Justice for All", "Metallica", 360);
  var m2 = Musica("Roots Bloody Roots", "Sepultura", 240);
  var m3 = Musica("Made in Hell", "Alestorm", 140);

  var play1 = Playlist("Metal", m1, m2, m3);

  play1.calcularDuracaoTotal();
  play1.exibirPlaylist();
  play1.tocarPlaylist();
}
import 'musica.dart';

void main(){
    var m1 = Musica("And Justice for all", "B", 360);
    var m2 = Musica("Rotes and Rotes", "Max cavaleira", 240);
    var m3 = Musica("Mead from Hell", "Alestrom", 140);

    var play1 = playlist("Metal", m1, m2, m3);

    play1.calcularDuracaoTotal();
    play1.exibirPlaylist();
    play1.tocarPlaylist();

    
}
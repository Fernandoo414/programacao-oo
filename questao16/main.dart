import 'personagem.dart';

void main(){

    var p1 = Personagem('guerreiro', 100, 25);
    var p2 = Personagem('goblin', 100, 20);

    while(p1.estaVivo() && p2.estaVivo()){

        p1.atacar(p2);
        if(p2.estaVivo()){
            p2.atacar(p1);
        }

        p1.exibirStatus();
        p2.exibirStatus();

        print('---------');
    }
}
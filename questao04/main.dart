import 'lampada.dart';

void main(){

    var L1 = Lampada();

    void simularUso(Lampada L1){
        for(int i = 0; i < 5; i++){
            L1.ligar();
            L1.exibirEstado();
            print("        ");
            L1.desligar();
            L1.exibirEstado();
            print("        ");
        }
    }

    simularUso(L1);

}
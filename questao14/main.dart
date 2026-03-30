import 'carro.dart';


void main(){
    var m1 = Motor(200, "Diesel");
    var m2 = Motor(150, "gasolina");

    var c1 = Carro("civic", m1);
    var c2 = Carro("fusca", m2);

        c1.exibirCarro();
        print("");
        c2.exibirCarro();
}
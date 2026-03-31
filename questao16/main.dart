import 'personagem.dart';

<<<<<<< HEAD
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
=======
void main() {
  Personagem p1 = Personagem("Guerreiro", 100, 20);
  Personagem p2 = Personagem("Mago", 80, 25);

  while (p1.estaVivo() && p2.estaVivo()) {
    p1.atacar(p2);
    if (p2.estaVivo()) {
      p2.atacar(p1);
    }

    print("");
    p1.exibirStatus();
    p2.exibirStatus();
    print("----------------------\n");
  }

  print("=== FIM DO COMBATE ===");

  if (p1.estaVivo()) {
    print("${p1.nome} venceu!");
  } else {
    print("${p2.nome} venceu!");
  }
>>>>>>> 1708ae13995ff323d90c3d712c2fb31e8c4f5e4e
}
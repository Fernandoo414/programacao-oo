import 'personagem.dart';

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
}
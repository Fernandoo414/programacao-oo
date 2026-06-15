import 'personagem.dart';
import 'Guerreiro.dart';
import 'arqueiro.dart';
import 'mago.dart';
import 'globin.dart';
import 'dragao.dart';
import 'listaGenerica.dart';

void main() {
  Guerreiro guerreiro = Guerreiro('Thoran', 120, 5, 20, 'Armadura 15');
  Arqueiro arqueiro = Arqueiro('Lia ', 80, 4, 15, 10);
  Mago mago = Mago('Merlin', 70, 6, 10, 50);
  Globin goblin = Globin('Gob', 40, 2, 100, 25);
  Dragao dragao = Dragao('Ignis', 200, 10, 1000, 35);

  ListaGenerica combatentes = ListaGenerica<Atacavel>();

  combatentes.adicionar(guerreiro);
  combatentes.adicionar(arqueiro);

  ListaGenerica magos = ListaGenerica<Magico>();

  magos.adicionar(mago);

  ListaGenerica flamejante = ListaGenerica<Flamejante>();

  flamejante.adicionar(dragao);
  flamejante.imprimirItens();

  ListaGenerica personagem = ListaGenerica<Personagem>();

  personagem.adicionar(guerreiro);
  personagem.adicionar(arqueiro);
  personagem.adicionar(mago);
  personagem.adicionar(goblin);
  personagem.adicionar(dragao);

  personagem.imprimirItens();

  print('\n=== Atacando ===');
  for (var c in combatentes.obterItens()) {
    c.atacar(goblin);
  }

  print('\n=== Magia ===');
  for (var m in magos.obterItens()) {
    m.magia(dragao);
  }

  print('\n=== Fogo ===');
  for (var f in flamejante.obterItens()) {
    f.chamas(guerreiro);
  }

  // Estado final
  print('\n=== Estado final ===');
  personagem.imprimirItens(); // toString() de cada um atualizado
}

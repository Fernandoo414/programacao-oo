import 'guerreiro.dart';
import 'arqueiro.dart';
import 'mago.dart';
import 'goblin.dart';
import 'dragao.dart';

void main() {
  // Criando personagens

  var guerreiro = Guerreiro('Thoran', 100, 5, 20, 'Aço');

  var arqueiro = Arqueiro('Lia', 80, 4, 15, 5);

  var mago = Mago('Merlin', 70, 6, 18, 30);

  var goblin = Globin('Gob', 50, 2, 100, 30);

  var dragao = Dragao('Ignis', 300, 10, 1000, 50);

  // Ações

  guerreiro.atacar(goblin);

  arqueiro.atacar(goblin);

  mago.atacar(dragao);

  dragao.soltarFogo(guerreiro);

  // Status finais

  print('\n=== STATUS FINAL ===\n');

  guerreiro.exibirStatus();

  print('');

  arqueiro.exibirStatus();

  print('');

  mago.exibirStatus();

  print('');

  goblin.exibirStatus();

  print('');

  dragao.exibirStatus();
}

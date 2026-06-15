import 'Guerreiro.dart';
import 'arqueiro.dart';
import 'mago.dart';
import 'globin.dart';
import 'dragao.dart';
//Programa principal
//No programa principal, crie pelo menos um objeto de cada uma das seguintes classes: Guerreiro, Arqueiro, Mago, Goblin e Dragao.
//Use os seguintes personagens:
//• Thoran, o guerreiro.
//• Lia, a arqueira.
//• Merlin, o mago.
//• Gob, o goblin.
//• Ignis, o dragão.
//Depois, execute a seguinte sequência de ações:
//• O guerreiro deve atacar o goblin.
//• O arqueiro deve atacar o goblin.
//• O mago deve lançar magia no dragão.
//• O dragão deve soltar fogo no guerreiro.
//Ao final, exiba o status de todos os personagens. Se algum inimigo estiver derrotado, exiba também sua recompensa.

void main() {
  var guerreiro = Guerreiro('Thoran', 100, 5, 20, 'Aço');
  var arqueiro = Arqueiro('Lia', 80, 4, 15, 5);
  var mago = Mago('Merlin', 70, 6, 18, 30);

  var goblin = Globin('Gob', 50, 2, 100, 30);
  var dragao = Dragao('Ignis', 300, 10, 1000, 50);

  // Ações
  guerreiro.atacar(goblin);
  arqueiro.atacar(goblin);
  mago.magia(dragao);
  dragao.chamas(guerreiro);

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


  if (!goblin.estaVivo()) {
    goblin.exibirRecompensa();
  }

  if (!dragao.estaVivo()) {
    dragao.exibirRecompensa();
  }
}

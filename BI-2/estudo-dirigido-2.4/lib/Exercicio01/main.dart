import 'pilha.dart';

void main() {
  Pilha<int> pilha = Pilha<int>();

  // usando +
  pilha + 10;
  pilha + 20;
  pilha + 30;

  pilha.mostrar();

  // usando []
  print(pilha[1]);

  // usando -
  print(-pilha);

  pilha.mostrar();
}

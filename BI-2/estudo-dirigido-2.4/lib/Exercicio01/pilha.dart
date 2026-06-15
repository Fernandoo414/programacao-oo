//crie uma classe chamada Pilha que simula o comportamento de uma pilha 
// Classe Pilha genérica
class Pilha<T> {

  // Constante estática
  static const int maxTam = 10;

  // Lista da pilha
  List<T> _elementos = [];

  // Empilhar usando +
  void operator +(T valor) {

    if (_elementos.length >= maxTam) {
      print("Pilha cheia!");
      return;
    }

    _elementos.add(valor);
  }

  // Desempilhar usando -
  T? operator -() {

    if (_elementos.isEmpty) {
      print("Pilha vazia!");
      return null;
    }

    return _elementos.removeLast();
  }

  // Acessar posição usando []
  T operator [](int i) {
    return _elementos[i];
  }

  // Mostrar topo
  T? topo() {

    if (_elementos.isEmpty) {
      return null;
    }

    return _elementos.last;
  }

  // Mostrar pilha
  void mostrar() {
    print(_elementos);
  }
}



//a) crie a pilha para ser generica Pilha<t>

//b) Sobrescreva os operadoes para realizar as seguintes operações 
//pilha + item //empilha (+)
//- pilha //acessa a posiçao i da pilha ([])
//c)Declare uma constante estática definindo o tamanho maxímo da pilha 
// static const int Max_TAm = 10;
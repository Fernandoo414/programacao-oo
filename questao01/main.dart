import 'pessoa.dart';

void main() {
  // Criando 3 pessoas (variaveis)
  var p1 = Pessoa('Ana', 25);
  var p2 = Pessoa('Carlos', 30);
  var p3 = Pessoa('Mariana', 20);

  // Exibindo dados (metodo)
  p1.exibirDados();
  p2.exibirDados();
  p3.exibirDados();
}
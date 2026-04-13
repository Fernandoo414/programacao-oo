import '../questao08/endereco.dart';
import 'pessoa.dart';

void main() {
  Endereco e1 = Endereco("Av. Vicente Machado", 1500, "Centro", "Curitiba", "PR", 12345678);
  Endereco e2 = Endereco("Rua Chile", 450, "Batel", "Curitiba", "PR", 87654321);
  Endereco e3 = Endereco("Rua das Flores", 10, "Centro", "Pinhais", "PR", 11223344);

  Pessoa p1 = Pessoa("Leonardo Teixeira", 20, "111.222.333-44", e1);
  Pessoa p2 = Pessoa("Ana Souza", 25, "555.666.777-88", e2);
  Pessoa p3 = Pessoa("Ricardo Silva", 32, "999.000.111-22", e3);

  print("RELATORIO DE CADASTROS:");
  p1.exibirPessoa();
  p2.exibirPessoa();
  p3.exibirPessoa();
  print("==================================");
}
import 'pessoa.dart';
import 'endereco.dart';

void main() {
  // Instanciando 3 endereços diferentes
  Endereco e1 = Endereco("Av. Vicente Machado", 1500, "Curitiba");
  Endereco e2 = Endereco("Rua Chile", 450, "Curitiba");
  Endereco e3 = Endereco("Rua das Flores", 10, "Pinhais");

  // Instanciando 3 pessoas diferentes usando os endereços acima
  Pessoa p1 = Pessoa("Leonardo Teixeira", 20, "111.222.333-44", e1);
  Pessoa p2 = Pessoa("Ana Souza", 25, "555.666.777-88", e2);
  Pessoa p3 = Pessoa("Ricardo Silva", 32, "999.000.111-22", e3);

  // Exibindo o boletim/dados de cada uma
  print("RELATÓRIO DE CADASTROS:");
  p1.exibirPessoa();
  p2.exibirPessoa();
  p3.exibirPessoa();
  print("==================================");
}
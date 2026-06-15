abstract class Funcionario {
  String nome;
  double salario;
  Funcionario(this.nome, this.salario);
  @override
  String toString() {
    return 'Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}

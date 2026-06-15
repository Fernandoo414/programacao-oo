class Funcionario {
  String nome;
  double salario;//privatizar
  
  Funcionario(this.nome, this.salario);
  void exibirDados() {
    print('Nome: $nome');
    print('Salário: R\$ $salario');
  }
}



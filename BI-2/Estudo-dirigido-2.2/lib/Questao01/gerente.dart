import 'funcionario.dart';
class Gerente extends Funcionario {
  String setor;
  Gerente(String nome, double salario, this.setor) : super(nome, salario);
  @override
  void exibirDados() {
    print('Gerente');
    print('Nome: $nome');
    print('Salário: R\$ $salario');
    print('Setor: $setor');
    print('');
  }
}

import 'funcionario.dart';
import 'bonificavel.dart';

class Gerente extends Funcionario implements Bonificavel {
  String setor;
  Gerente(String nome, double salario, this.setor) : super(nome, salario);
  @override
  double calcularBonus() {
    return salario * 0.15;
  }

  @override
  String toString() {
    return 'Gerente | Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)} | Setor: $setor | Bônus: R\$ ${calcularBonus().toStringAsFixed(2)}';
  }
}

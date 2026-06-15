import 'funcionario.dart';
import 'bonificavel.dart';
class FuncionarioComum extends Funcionario implements Bonificavel {
 FuncionarioComum(String nome, double salario) : super(nome, salario);
 @override
 double calcularBonus() {
 return salario * 0.05;
 }
 @override
 String toString() {
 return 'Funcionário Comum | Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)} | Bônus: R\$ ${calcularBonus().toStringAsFixed(2)}';
 }
}
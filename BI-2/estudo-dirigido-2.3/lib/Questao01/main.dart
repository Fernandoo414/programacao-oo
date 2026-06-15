import 'bonificavel.dart';
import 'gerente.dart';
import 'listaGenerica.dart';
import 'funcionarioComun.dart';



void main() {
  ListaGenerica<Bonificavel> funcionarios = ListaGenerica<Bonificavel>();
  
  Bonificavel funcionario1 = FuncionarioComum('Ana', 2500.00);
  Bonificavel funcionario2 = FuncionarioComum('Bruno', 3200.00);
  Bonificavel funcionario3 = Gerente('Carla', 7000.00, 'Financeiro');
  Bonificavel funcionario4 = FuncionarioComum('Diego', 2800.00);
  Bonificavel funcionario5 = Gerente('Elisa', 8500.00, 'Tecnologia');

  funcionarios.adicionar(funcionario1);
  funcionarios.adicionar(funcionario2);
  funcionarios.adicionar(funcionario3);
  funcionarios.adicionar(funcionario4);
  funcionarios.adicionar(funcionario5);

  print(' - Impressão dos funcionários -');
  funcionarios.imprimirItens();
  print('\n - Bônus dos funcionários -');
  for (var funcionario in funcionarios.obterItens()) {
    print('Bônus: R\$ ${funcionario.calcularBonus().toStringAsFixed(2)}');
  }
}

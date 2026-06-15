import 'ContaCorrente.dart';
import 'ContaInvestimento.dart';
import 'ContaPouponca.dart';
import 'listaGenerica.dart';
import 'ContaBancaria.dart';

void main() {
  var conta_da_ana = ContaPoupanca('Ana', 'CONTA Poupança', 1000.00);
  var conta_da_bruno = ContaCorrente('Bruno', 'CONTA Corrente', 1500.00);
  var conta_da_carla = ContaInvestimento(
    'Calra',
    'CONTA Investimento',
    5000.00,
  );
  var conta_da_diego = ContaPoupanca('Diego', 'CONTA Poupança', 2500.00);
  var conta_da_elisa = ContaCorrente('Elisa', 'CONTA Corrente', 800.00);

  var contaBancaria = ListaGenerica<Rentavel>();
  contaBancaria.adicionar(conta_da_ana);
  contaBancaria.adicionar(conta_da_bruno);
  contaBancaria.adicionar(conta_da_carla);
  contaBancaria.adicionar(conta_da_diego);
  contaBancaria.adicionar(conta_da_elisa);

  contaBancaria.imprimirItens();

  for (var contaBancaria in contaBancaria.itens) {
    contaBancaria.aplicarRendimento();
  }

  contaBancaria.imprimirItens();
}

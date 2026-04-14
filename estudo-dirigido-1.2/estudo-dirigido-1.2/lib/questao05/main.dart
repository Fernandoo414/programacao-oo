import 'conta.dart';

void main() {
  var conta1 = Conta.bancaria("321", "Lucas");
  var conta2 = Conta.vip("456", "Leonardo", 1000);

  conta1.exibirResumo();
  conta2.exibirResumo();

  conta1.depositar(300);
  conta1.sacar(60);

  conta2.sacar(600);
  conta2.depositar(400);

  conta1.exibirResumo();
  conta2.exibirResumo();
}

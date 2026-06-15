import 'Ingresso.dart';

class IngressoVip extends Ingresso {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional)
    : super(evento, valor);

  double valorFinal() {
    return valor + valorAdicional;
  }

  @override
  void exibirResumo() {
    super.exibirResumo();
    print('Valor adicional: $valorAdicional');
    print('Valor Final: ${valorFinal()}');
  }
}
import 'ingresso.dart';

class IngressoCamarote extends Ingresso implements Calculavel {
  double taxa_servico;
  String localizacao;

  IngressoCamarote(
    String evento,
    double valor,
    this.taxa_servico,
    this.localizacao,
  ) : super(evento, valor);

  @override
  double valorFinal() {
    return valor + taxa_servico;
  }

  @override
  String toString() {
    return 'Evento: $evento ,Valor do ingresso $valor, Tipo: Camarote  $localizacao';

  }
}

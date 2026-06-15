import 'ingresso.dart';
//Crie a classe IngressoVip, que herda de Ingresso, adiciona o atributo valorAdicional e implementa Calculavel.v
//O método valorFinal() deve retornar o valor do ingresso somado ao valor adicional.V
class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional)
    : super(evento, valor);

  double valorFinal() {
    return valor + valorAdicional;
  }


  @override
  String toString() {
    return 'Evento: $evento ,Valor do ingresso $valor,Valor adicional: $valorAdicional,Valor Final: ${valorFinal()}';
  }
}
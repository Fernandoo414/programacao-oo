import 'ingresso.dart';

//Crie também a classe IngressoPromocional, que herda de Ingresso e implementa Calculavel.
//Essa classe deve possuir o atributo desconto.
//O método valorFinal() deve retornar o valor do ingresso com o desconto aplicado.

class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto)
    : super(evento, valor);

  @override
  double valorFinal() {
    return valor - desconto;
  }

  
  @override
  String toString() {
    return 'Evento: $evento ,Valor do ingresso $valor,Desconto: R\$ ${desconto.toStringAsFixed(2)},Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}

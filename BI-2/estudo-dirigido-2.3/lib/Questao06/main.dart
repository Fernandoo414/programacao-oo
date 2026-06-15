import 'ingresso.dart';
import 'ingressoVip.dart';
import 'ingressoCamarote.dart';
import 'ingressoPromocional.dart';
import 'listaGenerica.dart';
void main() {

  // Objetos
  var ingresso1 = IngressoVip(
    'Show Rock',
    200.00,
    80.00,
  );

  var ingresso2 = IngressoPromocional(
    'Teatro Infantil',
    100.00,
    20.00,
  );

  var ingresso3 = IngressoCamarote(
    'Festival Jazz',
    300.00,
    50.00,
    'Setor A',
  );

  var ingresso4 = IngressoPromocional(
    'Cinema Especial',
    60.00,
    15.00,
  );

  var ingresso5 = IngressoVip(
    'Show Pop',
    180.00,
    70.00,
  );

  
  var lista = ListaGenerica<Calculavel>();


  lista.adicionar(ingresso1);
  lista.adicionar(ingresso2);
  lista.adicionar(ingresso3);
  lista.adicionar(ingresso4);
  lista.adicionar(ingresso5);

  
  lista.imprimirItens();

  print('\n=== VALORES FINAIS ===');


  for (var ingresso in lista.itens) {
    print('Valor final: R\$ ${ingresso.valorFinal()}');
  }
}
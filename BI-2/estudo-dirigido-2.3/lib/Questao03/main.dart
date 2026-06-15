import 'carro.dart';
import 'moto.dart';
import 'caminhao.dart';
import 'Fichavel.dart';
import 'listaGenerica.dart';

void main() {
  Carro carro01 = Carro('Toyota', 'Corolla', 2022, 'Carro', '4 portas');
  Carro carro02 = Carro('Honda', 'Civic', 2021, 'Carro', '4 portas');
  Moto moto01 = Moto('Yamaha', 'Fazer', 2020, 'Moto', '250 Cilindradas');
  Moto moto02 = Moto('Honda', 'Biz', 2020, 'Moto', '125 Cilindraqdas ');
  Caminhao caminhao = Caminhao(
    'Volvo',
    'FH',
    2019,
    'Caminhão ',
    '12 Toneladas',
  );

  ListaGenerica veiculo = ListaGenerica<Fichavel>();
  veiculo.adicionar(carro01);
  veiculo.adicionar(carro02);
  veiculo.adicionar(moto01);
  veiculo.adicionar(moto02);
  veiculo.adicionar(caminhao);

  //veiculo.imprimirItens(); -> porque precisso colocar ele se vai repetir duas vezes

  for (var veiculo in veiculo.itens) {
    print(veiculo);
  }
}

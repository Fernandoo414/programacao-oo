import 'endereco.dart';

void main(){

    var edr1 = Endereco('Rua bom jesus dos passos', 94, 'Torres', 'Curitiba', 'Parana', 12345678);
    var edr2 = Endereco('Rua barrao Vermelho', 95, 'Torres', 'Lapa', 'Parana', 87654321);
    var edr3 = Endereco('Rua caracol ', 96, 'Torres', 'Itapema', 'Snta Catarina', 18273645);

    edr1.exibirEndereco();
    edr2.exibirEndereco();
    edr3.exibirEndereco();
}
import 'produto.dart';

void main(){

    var pro1 = Produto(2, 'chocolate', 5.50, 3);

    print('Desconto: ${pro1.calcularDesconto()}');
    print('Total: ${pro1.calcularTotal()}');
    print("--------");
    pro1.exibirResumo();
}
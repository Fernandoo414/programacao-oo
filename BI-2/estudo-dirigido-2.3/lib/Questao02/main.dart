import 'produtoEletronico.dart';
import 'produtoPerecivel.dart';
import 'listaGenerica.dart';
import 'produto.dart';

void main() {
  var leite = ProdutoPerecivel('Leite', 6.50, '20/05/2026');
  var iorgute = ProdutoPerecivel('Iogute', 4.50, '18/05/2026');
  var notebook = ProdutoEletronico('Notebook', 3500, 'Garantida de 24 meses');
  var smartphone = ProdutoEletronico(
    'Smartphone',
    2200,
    'Garantida de 12 meses',
  );
  var queijo = ProdutoPerecivel('Queijo', 28.90, '25/05/2026');

  var produto = ListaGenerica<Exibivel>();
  produto.adicionar(leite);
  produto.adicionar(iorgute);
  produto.adicionar(notebook);
  produto.adicionar(smartphone);
  produto.adicionar(queijo);

    for (var produto in produto.itens) {
    produto.exibir();
  }
}

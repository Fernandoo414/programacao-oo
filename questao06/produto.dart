class Produto{
    int codigo;
    String nome;
    double precoUnitario;
    int quantidade;

    Produto(this.codigo, this.nome, this.precoUnitario, this.quantidade){
        if(codigo <= 0){
            throw ArgumentError("Esse codigo eh menor que 0");
        }
        if(nome.trim().isEmpty){
            throw ArgumentError("O nome nao pode ser vazio");
        }
        if(precoUnitario <= 0){
            throw ArgumentError("O preco unitario tem que ser maior que 0");
        }
        if(quantidade <= 0){
            throw ArgumentError("A quantidade de produtos tem que ser maior que 0");
        }
    }

    double calcularDesconto(){  // retorna o valor do desconto aplicado
        double porcentagem = 0;
        double total = 0;
        double valor_do_desconto = 0.0;
            if(quantidade >= 20){
                porcentagem = 15 / 100;
                total = (precoUnitario * quantidade);
                valor_do_desconto = porcentagem * total;

            } else if (quantidade >= 10 && quantidade < 20){
                porcentagem = 10 / 100;
                total = (precoUnitario * quantidade);
                valor_do_desconto = porcentagem * total;

            } else if (quantidade >= 5 && quantidade < 10){
                porcentagem = 5 / 100;
                total = (precoUnitario * quantidade);
                valor_do_desconto = porcentagem * total;

            } else if (quantidade <= 4){
                valor_do_desconto = 0;
            }
            return valor_do_desconto;
    }

    double calcularTotal(){  // retorna o valor total da compra com desconto 
        double total1 = 0;
        total1 = (precoUnitario * quantidade) - calcularDesconto();
        return total1;
    }

    void exibirResumo(){   // mostra código, nome, preço unitário, quantidade, desconto e total 
        print('O nome do produto eh: $nome');
        print('O codigo do produto eh: $codigo');
        print('O preco do produto eh: $precoUnitario');
        print('A quantidade do produto eh: $quantidade');
        print('O valor Total do desconto eh: ${calcularDesconto()}');
        print('O Total eh: ${calcularTotal()}');
    }
}
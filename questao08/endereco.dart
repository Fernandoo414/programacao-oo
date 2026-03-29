class Endereco{
    String rua;
    int numero;
    String bairro;
    String cidade;
    String estado;
    int cep;


    Endereco(this.rua, this.numero, this.bairro, this.cidade, this.estado, this.cep){
        if(rua.trim().isEmpty){
            throw ArgumentError("A rua precisa conter as informacoes");
        }
        if(numero <= 0){
            throw ArgumentError("O numero nao pode ser abaixo de 0");
        }
        if(bairro.trim().isEmpty){
            throw ArgumentError("O bairro precisa conter informacoes pedidas");
        }
        if(cidade.trim().isEmpty){
            throw ArgumentError("Precisa conter as informacoes da cidade");
        }
        if(estado.trim().isEmpty){
            throw ArgumentError("Precisa ser um Estado valido");
        }
        if(cep < 10000000 || cep > 99999999){
            throw ArgumentError("o cep tem que ser valido: maior que 8 digitos e menor que 8 ");
        }
    }


    exibirEndereco(){

        String cep0 = "";
        String cep1 = "";
        String cep2 = "";
        cep0 = cep.toString();
        cep1 = cep0.substring(0, 5);
        cep2 = cep0.substring(5);

        print('');
        print("Moro no estado: $estado");
        print("Na cidade eh $cidade");
        print("No bairro: $bairro");
        print("O numero da minha casa eh $numero");
        print("E minha rua se chama $rua");
        print("Meu cep eh $cep1 - $cep2");
        print('-----------------------------------------------------');
    }

}
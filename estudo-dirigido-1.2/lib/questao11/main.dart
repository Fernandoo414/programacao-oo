class Endereco {
  String rua;
  int numero;
  String cidade;

  Endereco(this.rua, this.numero, this.cidade);
}

class Cliente {
  String nome;
  Endereco endereco;

  Cliente(this.nome, this.endereco);

  Cliente.copia(Cliente outro)
      : nome = outro.nome,
        endereco = Endereco(
            outro.endereco.rua,
            outro.endereco.numero,
            outro.endereco.cidade);
}
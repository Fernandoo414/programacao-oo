class Contato {
  String nome;
  String telefone;

  Contato(this.nome, this.telefone);
}

class Agenda {
  List<Contato> contatos;

  Agenda.vazia() : contatos = [];

  Agenda.comContatos(this.contatos);

  void adicionar(Contato c) => contatos.add(c);

  void listar() {
    for (var c in contatos) {
      print("${c.nome} - ${c.telefone}");
    }
  }
}
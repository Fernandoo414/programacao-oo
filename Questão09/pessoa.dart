import 'endereco.dart'; 

class Pessoa {
  String _nome;
  int _idade;
  String _cpf;
  Endereco _endereco; // Composição: a classe Pessoa contém a classe Endereco

  // Construtor com as validações solicitadas (Restrições)
  Pessoa(this._nome, this._idade, this._cpf, this._endereco) {
    if (_nome.isEmpty) throw "Erro: O nome não pode ser vazio.";
    if (_idade < 0) throw "Erro: A idade deve ser maior ou igual a 0.";
    if (_cpf.isEmpty) throw "Erro: O CPF não pode ser vazio.";
  }

  // Método para exibir os dados de forma organizada
  void exibirPessoa() {
    print("==================================");
    print("DADOS DO CLIENTE");
    print("Nome: $_nome");
    print("Idade: $_idade anos");
    print("CPF: $_cpf");
    // Aqui chamamos o método formatar() que está lá no objeto endereco
    print("Endereço: ${_endereco.formatar()}");
  }
}
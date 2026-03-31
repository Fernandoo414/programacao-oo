class Endereco {
  String _rua;
  int _numero;
  String _cidade;

  // Construtor que recebe os valores e inicializa os atributos privados
  Endereco(this._rua, this._numero, this._cidade);

  // Método para devolver o endereço formatado como uma String
  String formatar() {
    return "$_rua, nº $_numero - $_cidade";
  }
}
class Comodo {
  String _nome;
  double _tamanho;

  Comodo(this._nome, this._tamanho) {
    if (_nome.isEmpty) throw "O nome do cômodo não pode ser vazio.";
    if (_tamanho <= 0) throw "O tamanho do cômodo deve ser maior que 0.";
  }

  // Getters para a classe Casa conseguir ler os dados
  String get nome => _nome;
  double get tamanho => _tamanho;
}
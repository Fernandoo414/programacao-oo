class Pokemon {
  int _numero;
  String _nome;
  String _tipo;
  int _nivel;
  int _hp;

  Pokemon(this._numero, this._nome, this._tipo, this._nivel, this._hp) {
    if (_nome.isEmpty) throw "O nome do Pokémon não pode ser vazio.";
    if (_tipo.isEmpty) throw "O tipo do Pokémon não pode ser vazio.";
    if (_nivel < 1 || _nivel > 100) throw "O nível deve estar entre 1 e 100.";
    if (_hp <= 0) throw "O HP deve ser maior que 0.";
  }

  // Getters para o Treinador conseguir ler os dados
  String get nome => _nome;
  int get nivel => _nivel;
  String get tipo => _tipo;
  int get hp => _hp;
  int get numero => _numero;
}
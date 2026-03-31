import 'pokemon.dart';

class Treinador {
  String _nome;
  Pokemon _p1;
  Pokemon _p2;
  Pokemon _p3;

  Treinador(this._nome, this._p1, this._p2, this._p3) {
    if (_nome.isEmpty) throw "O nome do treinador não pode ser vazio.";
  }

  int calcularPoderTotal() {
    return _p1.nivel + _p2.nivel + _p3.nivel;
  }

  void pokemonMaisForte() {
    Pokemon forte = _p1;

    if (_p2.nivel > forte.nivel) forte = _p2;
    if (_p3.nivel > forte.nivel) forte = _p3;

    print("O Pokémon mais forte do time é: ${forte.nome} (Nível ${forte.nivel})");
  }

  void exibirTime() {
    print("========================================");
    print("TREINADOR: $_nome");
    print("PODER TOTAL DO TIME: ${calcularPoderTotal()}");
    print("----------------------------------------");
    _exibirDadosPokemon(_p1);
    _exibirDadosPokemon(_p2);
    _exibirDadosPokemon(_p3);
    pokemonMaisForte();
    print("========================================");
  }

  // Método auxiliar para não repetir print no exibirTime
  void _exibirDadosPokemon(Pokemon p) {
    print("#${p.numero} ${p.nome} | Tipo: ${p.tipo} | Nível: ${p.nivel} | HP: ${p.hp}");
  }
}
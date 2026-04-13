class Pokemon {
  int _numero;
  String _nome;
  String _tipo;
  int _nivel;
  int _hp;

  Pokemon(this._numero, this._nome, this._tipo, this._nivel, this._hp) {
    if (_nome.trim().isEmpty) {
      print("O nome nao pode ser vazio");
    }
    if (_tipo.trim().isEmpty) {
      print("O tipo nao pode ser vazio");
    }
    if (_nivel < 1 || _nivel > 100) {
      print("O nivel deve estar entre 1 e 100");
    }
    if (_hp <= 0) {
      print("O HP deve ser maior que 0");
    }
  }

  int get numero => _numero;
  String get nome => _nome;
  String get tipo => _tipo;
  int get nivel => _nivel;
  int get hp => _hp;

  set numero(int n) => _numero = n;

  set nome(String n) {
    if (n.trim().isEmpty) {
      print("O nome nao pode ser vazio");
    }
    _nome = n;
  }

  set tipo(String t) {
    if (t.trim().isEmpty) {
      print("O tipo nao pode ser vazio");
    }
    _tipo = t;
  }

  set nivel(int n) {
    if (n < 1 || n > 100) {
      print("O nivel deve estar entre 1 e 100");
    }
    _nivel = n;
  }

  set hp(int h) {
    if (h <= 0) {
      print("O HP deve ser maior que 0");
    }
    _hp = h;
  }
}

class Treinador {
  String _nome;
  Pokemon _pokemon1;
  Pokemon _pokemon2;
  Pokemon _pokemon3;

  Treinador(this._nome, this._pokemon1, this._pokemon2, this._pokemon3) {
    if (_nome.trim().isEmpty) {
      print("O nome do treinador nao pode ser vazio");
    }
  }

  String get nome => _nome;

  set nome(String n) {
    if (n.trim().isEmpty) {
      print("O nome nao pode ser vazio");
    }
    _nome = n;
  }

  Pokemon get pokemon1 => _pokemon1;
  Pokemon get pokemon2 => _pokemon2;
  Pokemon get pokemon3 => _pokemon3;

  set pokemon1(Pokemon p) => _pokemon1 = p;
  set pokemon2(Pokemon p) => _pokemon2 = p;
  set pokemon3(Pokemon p) => _pokemon3 = p;

  int calcularPoderTotal() {
    return _pokemon1.nivel + _pokemon2.nivel + _pokemon3.nivel;
  }

  void pokemonMaisForte() {
    Pokemon forte = _pokemon1;

    if (_pokemon2.nivel > forte.nivel) {
      forte = _pokemon2;
    }
    if (_pokemon3.nivel > forte.nivel) {
      forte = _pokemon3;
    }

    print("Pokemon mais forte: ${forte.nome} (Nivel ${forte.nivel})");
  }

  void exibirTime() {
    print("========================================");
    print("TREINADOR: $_nome");
    print("PODER TOTAL: ${calcularPoderTotal()}");
    print("----------------------------------------");
    _exibirPokemon(_pokemon1);
    _exibirPokemon(_pokemon2);
    _exibirPokemon(_pokemon3);
    pokemonMaisForte();
    print("========================================");
  }

  void _exibirPokemon(Pokemon p) {
    print("#${p.numero} ${p.nome} | Tipo: ${p.tipo} | Nivel: ${p.nivel} | HP: ${p.hp}");
  }
}

void main() {
  var p1 = Pokemon(1, "Pikachu", "Eletrico", 50, 120);
  var p2 = Pokemon(2, "Charizard", "Fogo", 80, 200);
  var p3 = Pokemon(3, "Blastoise", "Agua", 70, 180);

  var treinador = Treinador("Ash", p1, p2, p3);

  treinador.exibirTime();
}
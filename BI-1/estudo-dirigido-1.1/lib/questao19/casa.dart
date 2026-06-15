class Comodo {
  String _nome;
  double _tamanho;

  Comodo(this._nome, this._tamanho) {
    if (_nome.trim().isEmpty) {
      print("O nome do comodo nao pode ser vazio");
    }
    if (_tamanho <= 0) {
      print("O tamanho deve ser maior que 0");
    }
  }

  String get nome => _nome;
  double get tamanho => _tamanho;

  set nome(String n) {
    if (n.trim().isEmpty) {
      print("O nome nao pode ser vazio");
    }
    _nome = n;
  }

  set tamanho(double t) {
    if (t <= 0) {
      print("O tamanho deve ser maior que 0");
    }
    _tamanho = t;
  }
}

class Casa {
  String _proprietario;
  Comodo _comodo1;
  Comodo _comodo2;
  Comodo _comodo3;

  Casa(this._proprietario, this._comodo1, this._comodo2, this._comodo3) {
    if (_proprietario.trim().isEmpty) {
      print("O proprietario nao pode ser vazio");
    }
  }

  String get proprietario => _proprietario;

  set proprietario(String p) {
    if (p.trim().isEmpty) {
      print("O proprietario nao pode ser vazio");
    }
    _proprietario = p;
  }

  Comodo get comodo1 => _comodo1;
  Comodo get comodo2 => _comodo2;
  Comodo get comodo3 => _comodo3;

  set comodo1(Comodo c) => _comodo1 = c;
  set comodo2(Comodo c) => _comodo2 = c;
  set comodo3(Comodo c) => _comodo3 = c;

  double calcularAreaTotal() {
    return _comodo1.tamanho + _comodo2.tamanho + _comodo3.tamanho;
  }

  void exibirCasa() {
    print("========================================");
    print("PROPRIETARIO: $_proprietario");
    print("----------------------------------------");
    print("COMODOS:");
    print("1. ${_comodo1.nome}: ${_comodo1.tamanho}m²");
    print("2. ${_comodo2.nome}: ${_comodo2.tamanho}m²");
    print("3. ${_comodo3.nome}: ${_comodo3.tamanho}m²");
    print("----------------------------------------");
    print("AREA TOTAL: ${calcularAreaTotal().toStringAsFixed(2)}m²");
    print("========================================");
  }
}
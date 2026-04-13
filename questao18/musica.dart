class Musica {
  String _titulo;
  String _artista;
  int _duracaoSegundos;

  Musica(this._titulo, this._artista, this._duracaoSegundos) {
    if (_titulo.trim().isEmpty) {
      throw ArgumentError("O titulo da musica nao pode ser vazio");
    }
    if (_artista.trim().isEmpty) {
      throw ArgumentError("O nome do artista nao pode ser vazio");
    }
    if (_duracaoSegundos <= 0) {
      throw ArgumentError("A duracao em segundos tem que ser maior que 0");
    }
  }

  String get titulo => _titulo;
  String get artista => _artista;
  int get duracaoSegundos => _duracaoSegundos;

  set titulo(String t) {
    if (t.trim().isEmpty) {
      throw ArgumentError("O titulo nao pode ser vazio");
    }
    _titulo = t;
  }

  set artista(String a) {
    if (a.trim().isEmpty) {
      throw ArgumentError("O artista nao pode ser vazio");
    }
    _artista = a;
  }

  set duracaoSegundos(int d) {
    if (d <= 0) {
      throw ArgumentError("A duracao deve ser maior que 0");
    }
    _duracaoSegundos = d;
  }
}

class Playlist {
  String _nome;
  Musica _musica1;
  Musica _musica2;
  Musica _musica3;

  Playlist(this._nome, this._musica1, this._musica2, this._musica3) {
    if (_nome.trim().isEmpty) {
      throw ArgumentError("O nome nao pode ser vazio");
    }
  }

  String get nome => _nome;

  set nome(String n) {
    if (n.trim().isEmpty) {
      throw ArgumentError("O nome nao pode ser vazio");
    }
    _nome = n;
  }

  Musica get musica1 => _musica1;
  Musica get musica2 => _musica2;
  Musica get musica3 => _musica3;

  set musica1(Musica m) => _musica1 = m;
  set musica2(Musica m) => _musica2 = m;
  set musica3(Musica m) => _musica3 = m;

  int calcularDuracaoTotal() {
    return _musica1.duracaoSegundos +
        _musica2.duracaoSegundos +
        _musica3.duracaoSegundos;
  }

  void tocarPlaylist() {
    print("Tocando playlist...");
    print(_musica1.titulo);
    print("Na sequencia");
    print(_musica2.titulo);
    print(_musica3.titulo);
  }

  void exibirPlaylist() {
    print("Playlist: $_nome");

    print("${_musica1.titulo} - ${_musica1.artista}");
    print("Segundos: ${_musica1.duracaoSegundos}\n");

    print("${_musica2.titulo} - ${_musica2.artista}");
    print("Segundos: ${_musica2.duracaoSegundos}\n");

    print("${_musica3.titulo} - ${_musica3.artista}");
    print("Segundos: ${_musica3.duracaoSegundos}");
  }
}
class Aluno {
  String _ra;
  String _nome;
  double _notaFinal;

  Aluno({required String ra, required String nome, required double notaFinal})
      : _ra = ra,
        _nome = nome,
        _notaFinal = notaFinal;

  bool aprovado() => _notaFinal >= 6;

  void exibirBoletim() {
    print("RA: $_ra | Nome: $_nome | Nota: $_notaFinal | Aprovado: ${aprovado()}");
  }
}

void main() {
  var a = Aluno(ra: "123", nome: "Leo", notaFinal: 7);
  a.exibirBoletim();
}
class Livro {
  String titulo;
  bool emprestado;

  Livro({
    required this.titulo,
    this.emprestado = false,
  });

  @override
  String toString() {
    return '$titulo (${emprestado ? "Emprestado" : "Disponível"})';
  }
}
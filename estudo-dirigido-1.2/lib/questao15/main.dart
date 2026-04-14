class Funcionario {
  String _nome;
  String _cargo;
  double _salario;

  Funcionario.estagiario(this._nome)
      : _cargo = "Estagiario",
        _salario = 1000;

  Funcionario.pleno(this._nome, this._salario)
      : _cargo = "Pleno";

  Funcionario.gerente({required String nome, double bonus = 1000})
      : _nome = nome,
        _cargo = "Gerente",
        _salario = 5000 + bonus;

  double calcular() => _salario;

  void exibir() {
    print("$_nome | $_cargo | $_salario");
  }
}
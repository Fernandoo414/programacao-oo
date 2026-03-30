import 'comodo.dart';

class Casa {
  String _proprietario;
  Comodo _comodo1;
  Comodo _comodo2;
  Comodo _comodo3;

  Casa(this._proprietario, this._comodo1, this._comodo2, this._comodo3) {
    if (_proprietario.isEmpty) throw "O nome do proprietário não pode ser vazio.";
  }

  // Método para somar as áreas
  double calcularAreaTotal() {
    return _comodo1.tamanho + _comodo2.tamanho + _comodo3.tamanho;
  }

  void exibirCasa() {
    print("========================================");
    print("PROPRIETÁRIO: $_proprietario");
    print("----------------------------------------");
    print("CÔMODOS DA RESIDÊNCIA:");
    print("1. ${_comodo1.nome}: ${_comodo1.tamanho}m²");
    print("2. ${_comodo2.nome}: ${_comodo2.tamanho}m²");
    print("3. ${_comodo3.nome}: ${_comodo3.tamanho}m²");
    print("----------------------------------------");
    print("ÁREA TOTAL DA CASA: ${calcularAreaTotal().toStringAsFixed(2)}m²");
    print("========================================");
  }
}
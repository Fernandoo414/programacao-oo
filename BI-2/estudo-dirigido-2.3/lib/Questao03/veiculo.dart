abstract class Veiculo {
  String marca;
  String modelo;
  int ano;
  String tipo_do_veiculo;

  Veiculo(this.marca, this.modelo, this.ano, this.tipo_do_veiculo);
  

   
  @override
  String toString() {
    return 'Marca: $marca | Modelo: $modelo | Ano: $ano';
  }
}

abstract class Animal {
  String nome;
  String tipoDeAnimal;

  Animal(this.nome, this.tipoDeAnimal);

  @override
  String toString() {
    return 'Nome $nome | Tipo de Animal $tipoDeAnimal ';
  }
}

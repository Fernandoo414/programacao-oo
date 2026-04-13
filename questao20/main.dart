import 'pokemon.dart';

void main() {
  print("=== LIGA POKÉMON TUIUTI ===");

  // Instanciando 3 Pokémons
  Pokemon charizard = Pokemon(6, "Charizard", "Fogo/Voador", 85, 266);
  Pokemon pikachu = Pokemon(25, "Pikachu", "Elétrico", 92, 180);
  Pokemon lucario = Pokemon(448, "Lucario", "Lutador/Aço", 78, 240);

  // Instanciando o Treinador com o time
  Treinador ash = Treinador("Ash Ketchum", charizard, pikachu, lucario);

  // Exibindo tudo
  ash.exibirTime();
}
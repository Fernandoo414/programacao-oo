import 'casa.dart';

void main() {
  print("=== SISTEMA IMOBILIÁRIO TUIUTI ===");

  // Instanciando os 3 cômodos separadamente
  Comodo quarto = Comodo("Quarto Principal", 12.5);
  Comodo sala = Comodo("Sala de Estar", 20.0);
  Comodo cozinha = Comodo("Cozinha Americana", 10.5);

  // Instanciando a casa passando os cômodos criados
  Casa minhaCasa = Casa("Leonardo Teixeira", quarto, sala, cozinha);

  // Exibindo as informações completas
  minhaCasa.exibirCasa();
}
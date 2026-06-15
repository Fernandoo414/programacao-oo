import 'SmarthPhone.dart';
import 'Notebook.dart';

//No main(), crie um smartphone e um notebook. Chame ligar() e desligar() para os dois objetos.

void main() {
  var smartphone = Smartphone('Iphone', '17 promax', 'IOS');
  var notebook = Notebook('Asus', 'Acer Nitro', 16);
    print('=== Informações do Smartphone ===');
  smartphone.ligar();
  smartphone.desligar();

  print('\n=== Informações do Notebook ===');
  notebook.ligar();
  notebook.desligar();
}

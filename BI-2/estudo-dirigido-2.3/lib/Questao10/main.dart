import 'SmarthPhone.dart';
import 'Notebook.dart';
import 'ligavel.dart';
import 'listaGenerica.dart';
import 'televisao.dart';

void main() {

var dispositivo01 = Smartphone('Samsung','Galaxy S24','smartphone','Android');
var dispositivo02 = Smartphone('Apple','iPhone 15','smartphone','iOS');
var dispositivo03 = Notebook('Dell','Inspiron', 'notebook', 16);
var dispositivo04 = Notebook('Lenovo','ThinkPad', 'notebook',32);
var dispositivo05 = Televisao('LG','OLED55', 'televisão', '55 polegadas');



  var dispositivo = ListaGenerica<Ligavel>();
  dispositivo.adicionar(dispositivo01);
  dispositivo.adicionar(dispositivo02);
  dispositivo.adicionar(dispositivo03);
  dispositivo.adicionar(dispositivo04);
  dispositivo.adicionar(dispositivo05);

  dispositivo.imprimirItens();

 for (var d in dispositivo.itens) {
    d.ligar();
  }

  for (var d in dispositivo.itens) {
    d.desligar();
  }
}

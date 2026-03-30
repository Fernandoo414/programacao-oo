import 'quadrado.dart';

void main(){

    var q1 = Quadrado(4, '*');
    var q2 = Quadrado(4, '*');
    var q3 = Quadrado(5, '*');
    var q4 = Quadrado(6, '*');

    q1.desenhar();
    q1.exibirResumo();

    print('------------');
    q2.desenhar();
    q2.exibirResumo();

    print('------------');
    q3.desenhar();
    q3.exibirResumo();

    print('------------');
    q4.desenhar();
    q4.exibirResumo();


    print('------------');
    print('Os quadrados q1 e q2 sao iguais? ${q1.ehIgual(q2)}');
    print('------------');
    print('Os quadrados q3 e q4 sao iguais? ${q3.ehIgual(q4)}');
}
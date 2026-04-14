import 'aluno.dart';

void main() {
  var a1 = Aluno(ra: 1, nome: "Leonardo", notaFinal: 7.5);
  var a2 = Aluno(ra: 2, nome: "Lucas", notaFinal: 4.0);
  var a3 = Aluno(ra: 3, nome: "Fernando", notaFinal: 8.0);

  a1.exibirBoletim();
  a2.exibirBoletim();
  a3.exibirBoletim();
}

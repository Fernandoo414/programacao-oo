import './usuario.dart';

void main() {
  var u1 = Usuario('Leonardo', 'leonardo@email.com');
  var u2 = Usuario('Fernando', 'fernando@email.com', 'brun0x');
  u1.exibirPerfil();
  u2.exibirPerfil();
}

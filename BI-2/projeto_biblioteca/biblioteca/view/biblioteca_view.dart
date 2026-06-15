import 'dart:io';

import '../model/livro.dart';
import '../model/usuario.dart';

class BibliotecaView {

  void exibirMenu() {
    print('');
    print('=== Biblioteca ===');
    print('1 - Cadastrar livro disponível');
    print('2 - Listar livros emprestados');
    print('3 - Cadastrar usuário');
    print('4 - Listar usuários');
    print('5 - Emprestar livro');
    print('6 - Devolver livro');
    print('9 - Sair');
    print('');
  }

  int lerOpcao() {
    stdout.write('Escolha uma opção: ');
    return int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  }

  Livro lerLivro() {
    stdout.write('Título do livro: ');
    String titulo = stdin.readLineSync() ?? '';

    return Livro(
      titulo: titulo,
      emprestado: false,
    );
  }

  Usuario lerUsuario() {
    stdout.write('Nome do usuário: ');
    String nome = stdin.readLineSync() ?? '';

    return Usuario(
      nome: nome,
    );
  }

  int lerIndiceLivro() {
    stdout.write('Informe o número do livro: ');
    return int.tryParse(stdin.readLineSync() ?? '') ?? -1;
  }

  void exibirLivros(List<Livro> livros) {
    if (livros.isEmpty) {
      print('Nenhum livro cadastrado.');
      return;
    }

    print('\n=== Livros ===');

    for (int i = 0; i < livros.length; i++) {
      print('${i + 1} - ${livros[i]}');
    }
  }

  void exibirUsuarios(List<Usuario> usuarios) {
    if (usuarios.isEmpty) {
      print('Nenhum usuário cadastrado.');
      return;
    }

    print('\n=== Usuários ===');

    for (int i = 0; i < usuarios.length; i++) {
      print('${i + 1} - ${usuarios[i]}');
    }
  }
}
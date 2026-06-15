import '../model/livro.dart';
import '../model/usuario.dart';
import '../view/biblioteca_view.dart';

class BibliotecaController {
  final BibliotecaView _view = BibliotecaView();

  final List<Livro> _livros = [];
  final List<Usuario> _usuarios = [];

  void iniciar() {
    int opcao;

    do {
      _view.exibirMenu();
      opcao = _view.lerOpcao();

      switch (opcao) {
        case 1:
          cadastrarLivro();
          break;

        case 2:
          listarLivrosEmprestados();
          break;

        case 3:
          cadastrarUsuario();
          break;

        case 4:
          listarUsuarios();
          break;

        case 5:
          emprestarLivro();
          break;

        case 6:
          devolverLivro();
          break;

        case 9:
          print('\nSistema encerrado.');
          break;

        default:
          print('\nOpção inválida.');
      }
    } while (opcao != 9);
  }

  void cadastrarLivro() {
    Livro livro = _view.lerLivro();

    _livros.add(livro);

    print('\nLivro cadastrado com sucesso!');
  }

  void cadastrarUsuario() {
    Usuario usuario = _view.lerUsuario();

    _usuarios.add(usuario);

    print('\nUsuário cadastrado com sucesso!');
  }

  void listarUsuarios() {
    if (_usuarios.isEmpty) {
      print('\nNenhum usuário cadastrado.');
      return;
    }

    print('\n=== Usuários Cadastrados ===');

    for (int i = 0; i < _usuarios.length; i++) {
      print('${i + 1} - ${_usuarios[i]}');
    }
  }

  void listarLivrosEmprestados() {
    bool encontrou = false;

    print('\n=== Livros Emprestados ===');

    for (Livro livro in _livros) {
      if (livro.emprestado) {
        print(livro);
        encontrou = true;
      }
    }

    if (!encontrou) {
      print('Nenhum livro emprestado.');
    }
  }

  void emprestarLivro() {
  // filtra só disponíveis
  List<Livro> disponiveis = _livros.where((l) => !l.emprestado).toList();

    if (disponiveis.isEmpty) {
        print('\nNenhum livro disponível para empréstimo.');
        return;
    }

    print('\n=== Livros Disponíveis ===');
    for (int i = 0; i < disponiveis.length; i++) {
        print('${i + 1} - ${disponiveis[i]}');
    }

    int indice = _view.lerIndiceLivro();

    if (indice < 1 || indice > disponiveis.length) {
        print('\nLivro inválido.');
        return;
    }

    disponiveis[indice - 1].emprestado = true;
        print('\nLivro emprestado com sucesso!');
    }

    void devolverLivro() {
        if (_livros.isEmpty) {
        print('\nNenhum livro cadastrado.');
        return;
        }

    print('\n=== Livros ===');

    for (int i = 0; i < _livros.length; i++) {
        print('${i + 1} - ${_livros[i]}');
    }

    int indice = _view.lerIndiceLivro();

    if (indice < 1 || indice > _livros.length) {
      print('\nLivro inválido.');
      return;
    }

    Livro livro = _livros[indice - 1];

    if (!livro.emprestado) {
      print('\nEste livro não está emprestado.');
      return;
    }

    livro.emprestado = false;

    print('\nLivro devolvido com sucesso!');
  }
}
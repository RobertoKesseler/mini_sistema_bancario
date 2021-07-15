import '../funcionario.dart';

class Funcionarios {
  static List<Funcionario> _funcionarios = [];

  void cadastrar(Funcionario funcionario) {
    _funcionarios.add(funcionario);
  }

  Iterable<Funcionario> buscar(String nome) {
    return _funcionarios.where((objFuncionario) => objFuncionario.nome == nome);
  }

  List<Funcionario> listar() {
    return _funcionarios;
  }

  void remover(String nome) {
    Iterable<Funcionario> listaDeFuncionarios = buscar(nome);
    listaDeFuncionarios.forEach((funcionario) {
      _funcionarios.remove(funcionario);
    });
  }

  void editar(Funcionario objFuncionario) {
    Iterable<Funcionario> listaDeFuncionarios = buscar(objFuncionario.nome);
    listaDeFuncionarios.forEach((antigoFuncionario) {
      antigoFuncionario = objFuncionario;
    });
  }
}

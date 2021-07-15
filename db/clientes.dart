import '../pessoa.dart';

class Clientes {
  static List<Pessoa> _clientes = [];

  void cadastrar(Pessoa pessoa) {
    _clientes.add(pessoa);
  }

  Iterable<Pessoa> buscar(String telefone) {
    return _clientes.where((objPessoa) => objPessoa.telefone == telefone);
  }

  List<Pessoa> listar() {
    return _clientes;
  }

  void remover(String telefone) {
    Iterable<Pessoa> listaDeContas = buscar(telefone);
    listaDeContas.forEach((pessoa) {
      _clientes.remove(pessoa);
    });
  }

  void editar(Pessoa objPessoa) {
    Iterable<Pessoa> listaDeClientes = buscar(objPessoa.telefone);
    listaDeClientes.forEach((antigaPessoa) {
      antigaPessoa = objPessoa;
    });
  }
}

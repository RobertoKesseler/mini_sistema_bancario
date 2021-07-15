import '../endereco.dart';

class Enderecos {
  static List<Endereco> _enderecos = [];

  void cadastrar(Endereco endereco) {
    _enderecos.add(endereco);
  }

  Iterable<Endereco> buscar(String cep) {
    return _enderecos.where((objEndereco) => objEndereco.cep == cep);
  }

  List<Endereco> listar() {
    return _enderecos;
  }

  void remover(String cep) {
    Iterable<Endereco> listaDeEnderecos = buscar(cep);
    listaDeEnderecos.forEach((endereco) {
      _enderecos.remove(endereco);
    });
  }

  void editar(Endereco objEndereco) {
    Iterable<Endereco> listaDeEnderecos = buscar(objEndereco.cep);
    listaDeEnderecos.forEach((antigoEndereco) {
      antigoEndereco = objEndereco;
    });
  }
}

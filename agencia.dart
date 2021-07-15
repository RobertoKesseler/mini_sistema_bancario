import 'endereco.dart';
import 'gerente.dart';

class Agencia {
  int? _numero;
  Endereco? _endereco;
  Gerente? _gerente;

  //Método construtor
  Agencia(
    this._numero,
    this._gerente,
    this._endereco,
  );

  int? get numero => this._numero;
  Endereco? get endereco => this._endereco;
  Gerente? get gerente => this._gerente;

  set numero(int? numero) {
    this._numero = numero;
  }

  set endereco(Endereco? endereco) {
    this._endereco = endereco;
  }

  set gerente(Gerente? gerente) {
    this._gerente = gerente;
  }

  @override
  String toString() {
    return "Número: ${this._numero}, Endereço: ${this._endereco}, Gerente: ${this._gerente}";
  }
}

import 'endereco.dart';

abstract class Pessoa {
  String? _email;
  String _telefone;
  Endereco _endereco;

  Pessoa(
    this._telefone,
    this._endereco, [
    this._email,
  ]);

  String? get email => this._email;
  String get telefone => this._telefone;
  Endereco get endereco => this._endereco;

  set email(String? email) {
    this._email = email;
  }
}

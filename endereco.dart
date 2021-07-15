class Endereco {
  String _rua;
  String _numero;
  String? _bairro;
  String _cidade;
  String _estado;
  String _cep;

  Endereco(
    this._rua,
    this._numero,
    this._cidade,
    this._estado,
    this._cep,
  );

  String get rua => this._rua;
  String get numero => this._numero;
  String? get bairro => this._bairro;
  String get cidade => this._cidade;
  String get estado => this._estado;
  String get cep => this._cep;
  
  
  set rua(String value) {
    this._rua = value;
  }

  set numero(String value) {
    this._numero = value;
  }

  set bairro(String? value) {
    this._bairro = value;
  }

  set cidade(String value) {
    this._cidade = value;
  }

  set estado(String value) {
    this._estado = value;
  }

  set cep(String value) {
    this._cep = value;
  }

  @override
  String toString() {
    return "Rua: ${this._rua}, n° ${this._numero}, Bairro: ${this._bairro} - ${this._cidade}/${this._estado}";
  }
}

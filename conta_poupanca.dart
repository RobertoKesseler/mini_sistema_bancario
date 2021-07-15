import 'agencia.dart';
import 'conta.dart';
import 'pessoa.dart';

class ContaPoupanca extends Conta {
  int _dataRendimento;
  double _percentualDeRendimento;

  ContaPoupanca(
    this._dataRendimento,
    this._percentualDeRendimento,
    String hNumero,
    Agencia hAgencia,
    Pessoa hCliente,
    double hSaldo,
  ) : super(
          hNumero,
          hAgencia,
          hCliente,
          hSaldo,
        );

  int get dataRendimento => this._dataRendimento;
  double get percentualDeRendimento => this._percentualDeRendimento;

  void render() {
    double rendimento = this.obterSaldo() * this._percentualDeRendimento;
    this.depositar(rendimento);
  }
}

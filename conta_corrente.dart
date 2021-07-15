import 'agencia.dart';
import 'conta.dart';
import 'pessoa.dart';

class ContaCorrente extends Conta {
  double _limite;

  ContaCorrente(
    this._limite,
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

  double get limite => this._limite;

  @override
  double sacar(double valor) {
    double valorSaque = (this.obterSaldo() + this._limite >= valor) ? valor : 0;
    return super.sacar(valorSaque);
  }
}

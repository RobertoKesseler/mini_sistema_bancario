import 'endereco.dart';
import 'pessoa_fisica.dart';

abstract class Funcionario extends PessoaFisica {
  int _matricula;
  double _salario;

  Funcionario(
    this._matricula,
    this._salario,
    String hNome,
    String hRG,
    String hCPF,
    String hdataDeNascimento,
    String hTelefone,
    Endereco hEndereco, [
    String? hEmail,
  ]) : super(
          hNome,
          hRG,
          hCPF,
          hdataDeNascimento,
          hTelefone,
          hEndereco,
          hEmail,
        );

  int get matricula => this._matricula;
  set matricula(int value) => this._matricula = value;
  double get salario => this._salario;
  set salario(double value) => this._salario = value;
}

import 'endereco.dart';
import 'funcionario.dart';

class CaixaOperador extends Funcionario {
  int _guiche;

  CaixaOperador(
    this._guiche,
    int hMatricula,
    double hSalario,
    String hNome,
    String hRG,
    String hCPF,
    String hdataDeNascimento,
    String hTelefone,
    Endereco hEndereco, [
    String? hEmail,
  ]) : super(
          hMatricula,
          hSalario,
          hNome,
          hRG,
          hCPF,
          hdataDeNascimento,
          hTelefone,
          hEndereco,
          hEmail,
        );

  int get guiche => this._guiche;
  set guiche(int value) => this._guiche = value;
}

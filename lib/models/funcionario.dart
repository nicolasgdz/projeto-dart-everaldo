import 'pessoa.dart';

class Funcionario extends Pessoa {
  Funcionario({
    required super.id,
    required super.nome,
    required super.cpf,
    required super.rg,
    required super.dataNascimento,
    required this.cargo,
    required this.salario,
  });

  final String cargo;
  final int salario;

  @override
  String get categoria => 'Funcionário';

  @override
  String get detalhes => '$cargo · Salário: R\$ $salario,00';

  @override
  String cadastrar() => 'Funcionário cadastrado no sistema.';
}

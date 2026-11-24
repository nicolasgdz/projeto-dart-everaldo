abstract class Pessoa {
  Pessoa({
    required this.id,
    required this.nome,
    required String cpf,
    required this.rg,
    required this.dataNascimento,
  }) : _cpf = cpf {
    if (id <= 0) throw ArgumentError('O ID deve ser positivo.');
    if (nome.trim().isEmpty) throw ArgumentError('Informe o nome.');
  }

  final int id;
  String nome;
  final String _cpf;
  String get cpf => _cpf;
  final int rg;
  final DateTime dataNascimento;

  String get categoria;
  String get detalhes;
  String cadastrar();

  @override
  String toString() => '$nome | CPF: $cpf | RG: $rg | '
      'Nascimento: ${dataNascimento.day}/${dataNascimento.month}/${dataNascimento.year} | '
      'ID: $id | $categoria | $detalhes';
}

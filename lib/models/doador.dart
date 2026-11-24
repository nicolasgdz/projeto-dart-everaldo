import 'pessoa.dart';

class Doador extends Pessoa {
  Doador({
    required super.id,
    required super.nome,
    required super.cpf,
    required super.rg,
    required super.dataNascimento,
    this.tipoSanguineo,
  });

  final String? tipoSanguineo;

  bool atendeCriterioDeIdade(DateTime data) {
    var idade = data.year - dataNascimento.year;
    if (data.month < dataNascimento.month ||
        (data.month == dataNascimento.month && data.day < dataNascimento.day)) {
      idade--;
    }
    return idade >= 18 && idade <= 69;
  }

  @override
  String get categoria => 'Doador';

  @override
  String get detalhes => 'Tipo sanguíneo: ${tipoSanguineo ?? 'não informado'}';

  @override
  String cadastrar() => 'Doador cadastrado no sistema.';
}

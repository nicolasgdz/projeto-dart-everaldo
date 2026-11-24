class Bolsa {
  const Bolsa({
    required this.codigoBolsa,
    required this.status,
    required this.dataValidade,
  });

  final String codigoBolsa;
  final String status;
  final DateTime dataValidade;

  bool verificarValidade([DateTime? referencia]) {
    final hoje = referencia ?? DateTime.now();
    final validade = DateTime.utc(dataValidade.year, dataValidade.month, dataValidade.day);
    return validade.isAfter(DateTime.utc(hoje.year, hoje.month, hoje.day));
  }
}

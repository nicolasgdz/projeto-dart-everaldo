class Doacao {
  const Doacao({
    required this.id,
    required this.dataDoacao,
    required this.volumeMl,
  });

  final int id;
  final DateTime dataDoacao;
  final int volumeMl;

  String registrarDoacao() => 'Doação $id registrada: $volumeMl mL.';
}

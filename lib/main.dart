import 'package:flutter/material.dart';

import 'models/doador.dart';
import 'models/funcionario.dart';
import 'models/pessoa.dart';

final pessoas = <Pessoa>[
  Doador(
    id: 1,
    nome: 'Ana Lima',
    cpf: 'CPF-DEMO-001',
    rg: 1001,
    dataNascimento: DateTime(1996, 2, 12),
    tipoSanguineo: 'O+',
  ),
  Funcionario(
    id: 2,
    nome: 'Bruno Reis',
    cpf: 'CPF-DEMO-002',
    rg: 1002,
    dataNascimento: DateTime(1984, 3, 12),
    cargo: 'Enfermeiro',
    salario: 4200,
  ),
  Doador(
    id: 3,
    nome: 'Clara Souza',
    cpf: 'CPF-DEMO-003',
    rg: 1003,
    dataNascimento: DateTime(2000, 4, 12),
    tipoSanguineo: 'A−',
  ),
  Doador(
    id: 4,
    nome: 'Diego Alves',
    cpf: 'CPF-DEMO-004',
    rg: 1004,
    dataNascimento: DateTime(1950, 5, 12),
    tipoSanguineo: 'AB+',
  ),
  Funcionario(
    id: 5,
    nome: 'Eva Castro',
    cpf: 'CPF-DEMO-005',
    rg: 1005,
    dataNascimento: DateTime(1993, 6, 12),
    cargo: 'Recepcionista',
    salario: 2500,
  ),
  Doador(
    id: 6,
    nome: 'Felipe Dias',
    cpf: 'CPF-DEMO-006',
    rg: 1006,
    dataNascimento: DateTime(2009, 7, 12),
  ),
];

void main() => runApp(const SistemaDoacao());

class SistemaDoacao extends StatelessWidget {
  const SistemaDoacao({super.key});

  @override
  Widget build(BuildContext context) {
    final hoje = DateTime.now();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistema de Doação',
      theme: ThemeData(colorSchemeSeed: const Color(0xff96304a)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Sistema de Doação')),
        body: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: pessoas.length,
          itemBuilder: (context, index) {
            final pessoa = pessoas[index];
            final linhas = [
              '${pessoa.categoria} · Cadastro #${pessoa.id}',
              pessoa.detalhes,
              if (pessoa is Doador)
                pessoa.atendeCriterioDeIdade(hoje)
                    ? 'Dentro da faixa etária do projeto'
                    : 'Fora da faixa etária do projeto',
            ];
            return Card(
              child: ListTile(
                leading: Icon(pessoa is Doador
                    ? Icons.water_drop_outlined
                    : Icons.badge_outlined),
                title: Text(pessoa.nome),
                subtitle: Text(linhas.join('\n')),
              ),
            );
          },
        ),
      ),
    );
  }
}

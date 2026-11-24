# Sistema de Doação

Projeto da E1 de Tecnologias para Desenvolvimento de Software II. A tela lista seis pessoas fictícias de um sistema de doação de sangue. Cada cartão mostra nome, categoria, ID e os dados próprios de um doador ou funcionário.

**Integrantes da dupla** — Nicolas Boechat dos Santos E SOMENTE ELE PQ EU NÃO TENHO DUPLA

## Como executar

Com o Flutter e o Chrome instalados, abra a pasta que contém `pubspec.yaml` e execute:

```sh
flutter pub get
flutter run -d chrome
```

## Do Java para o Dart

As cinco classes ficam em `lib/models`. Doador e Funcionario herdam de Pessoa e implementam o getter `detalhes`. Em `lib/main.dart`, o `ListView.builder` usa esse getter ao montar cada cartão da lista de pessoas. O tipo sanguíneo pode ficar em branco e o CPF é armazenado em um campo privado com getter público.

O método `atendeCriterioDeIdade` reproduz a regra do trabalho Java. Ele calcula a idade em anos completos na data consultada e aceita idades de 18 a 69 anos, inclusive. A classe Bolsa conserva a comparação estrita do Java: uma bolsa com vencimento hoje já está fora da validade para o sistema. Doacao guarda a data e o volume em mililitros.

## Uso de IA

A IA foi utilizada para tirar duvidas e organização geral do arquivo.

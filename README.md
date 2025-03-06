# Exercício Sistema de Gerenciamento de Funcionários em dart
Este repositório contém a resolução para o seguinte exercício: 
- Atividade: Sistema de Gerenciamento de Funcionários em Dart
- Objetivo: Criar uma aplicação em Dart que utilize encapsulamento, métodos e atributos para gerenciar funcionários de uma empresa.
- Descrição: Desenvolva um sistema de cadastro de funcionários que permita adicionar, remover, aumentar salário e exibir informações dos funcionários.
- Requisitos da Atividade
Criar a classe Funcionario com os seguintes atributos privados:
 id (int)
 nome (String)
 cargo (String)
 salario (double)
- Regras:
 O salário deve ser privado (_salario).
 Criar getters para acessar o salário e setters que validam aumentos salariais.
 O ID do funcionário deve ser único e não pode ser alterado depois da criação.
- Criar métodos públicos para manipular os dados do funcionário:
 aumentarSalario(double percentual): Aumenta o salário em uma determinada porcentagem.
 exibirInformacoes(): Mostra os dados do funcionário formatados.
- Criar uma classe Empresa para gerenciar os funcionários:
 adicionarFuncionario(Funcionario funcionario): Adiciona um funcionário à lista da empresa.
 removerFuncionario(int id): Remove um funcionário pelo ID.
 listarFuncionarios(): Exibe todos os funcionários cadastrados.
- Criar um programa principal (main.dart) para testar as funcionalidades:
 Criar uma empresa.
 Cadastrar funcionários.
 Aplicar aumentos salariais.
 Exibir os dados atualizados.

## Como Executar o Projeto 
Para executar o projeto, certifique-se de ter o Flutter/Dart instalado em sua máquina, baixe o repositório, abra o projeto no VSCode e execute o seguinte comando no terminal: 
- `dart run bin/main.dart`

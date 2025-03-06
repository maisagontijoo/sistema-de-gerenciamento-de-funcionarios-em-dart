import 'dart:io';
import 'atividade3.dart';

void main(List<String> arguments) {
  Empresa empresa = Empresa();
  bool sair = false;

  while (!sair) {
    print('O que você deseja fazer?');
    print('1 - Adicionar Funcionário(a)');
    print('2 - Remover Funcionário(a)');
    print('3 - Aumentar Salário');
    print('4 - Listar Funcionários');
    print('5 - Sair');

    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        print('ID funcionário(a):');
        int? id = int.tryParse(stdin.readLineSync() ?? '');
        bool idExiste = empresa.funcionarios.any((funcionario) => funcionario.id == id);
        if (id == null || idExiste) {
          print('ID inválido!');
          break;
        }

        print('Nome funcionário(a):');
        String? nome = stdin.readLineSync();
        print('Cargo funcionário(a):');
        String? cargo = stdin.readLineSync();
        print('Salário funcionário(a):');
        double? salario = double.tryParse(stdin.readLineSync() ?? '');

        if (nome == null || cargo == null || salario == null || salario <= 0) {
          print('Dados inválidos!');
          break;
        }

        Funcionario funcionario = Funcionario(id, nome, cargo);
        funcionario.salario = salario;
        empresa.adicionarFuncionario(funcionario);
        break;

      case '2':
        print('ID do(a) funcionário(a) a ser removido:');
        int? id = int.tryParse(stdin.readLineSync() ?? '');
        if (id == null) {
          print('ID inválido!');
          break;
        }
        empresa.removerFuncionario(id);
        break;

      case '3':
        print('ID do(a) funcionário(a) para aumento do salário:');
        int? id = int.tryParse(stdin.readLineSync() ?? '');
        if (id == null) {
          print('ID inválido!');
          break;
        }

        print('Porcentagem de aumento:');
        double? porcentagem = double.tryParse(stdin.readLineSync() ?? '');
        if (porcentagem == null || porcentagem <= 0) {
          print('Porcentagem inválida!');
          break;
        }

        bool encontrado = false;
        for (var funcionario in empresa.funcionarios) {
          if (funcionario.id == id) {
            funcionario.aumentarSalario(porcentagem);
            encontrado = true;
            break;
          }
        }

        if (!encontrado) {
          print('Funcionário(a) não encontrado!');
        }
        break;

      case '4':
        empresa.listarFuncionarios();
        break;

      case '5':
        sair = true;
        break;

      default:
        print('Opção inválida!');
    }
  }
  print('--------------------------------------');
}
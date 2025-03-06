import 'package:atividade3/atividade3.dart' as atividade3;

// Desenvolva um sistema de cadastro de funcionários que permita adicionar, remover, aumentar salário e exibir informações dos funcionários.

class Funcionario {
  final int id;
  String nome;
  String cargo;
  double _salario = 0.0;

  Funcionario(this.id, this.nome, this.cargo);

  double get salario => _salario;

  set salario(double novoSalario) {
    if (novoSalario > 0) {
      _salario = novoSalario;
    } else {
      print('O salário deve ser maior que zero.');
    }
  }

  void aumentarSalario(double percentual) {
  if (percentual > 0) {
    _salario += _salario * (percentual / 100);
    print('Salário de $nome atualizado para R\$ $_salario!');
  } else {
    print('O percentual de aumento deve ser positivo.');
  }
}

  void exibirInformacoes() {
    print('ID: $id | Nome: $nome | Cargo: $cargo | Salário: R\$$_salario');
  }
}


class Empresa {
  List<Funcionario> funcionarios = [];

  void adicionarFuncionario(Funcionario funcionario) {
    funcionarios.add(funcionario);
    print('Funcionário ${funcionario.nome} adicionado com sucesso!');
  }

  void removerFuncionario(int id) {
    funcionarios.removeWhere((funcionario) => funcionario.id == id);
    print('Funcionário removido com sucesso!');
  }

  void listarFuncionarios() {
    if (funcionarios == []) {
      print('Nenhum funcionário cadastrado.');
    } else {
      for (var funcionario in funcionarios) {
        funcionario.exibirInformacoes();
      }
    }
  }
}


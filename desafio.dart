void main(List<String> args) {
  final pacientes = [
    "Rodrigo Rahman|35|Desenvolvedor|SP",
    "Manoel Silva|12|Estudante|AL",
    "Joaquim Rahman|18|Estudante|SP",
    "Fernando Verne|35|Estudante|PE",
    "Gustavo Silva|40|Desenvolvedor|CE",
    "Sandra Silva|40|Desenvolvedor|MG",
    "Regina Verne|35|Dentista|MG",
    "João Rahman|55|Jornalista|RJ",
    "Nicolas Estrella|20|Desenvolvedor|SP",
    "Henrique Copatti|20|Dentista|SP",
  ];

  var nomes = [];
  var idades = [];
  var profissoes = [];
  var estados = [];

  for (var paciente in pacientes) {
    var infoPacientes = paciente.split("|");
    nomes.add(infoPacientes[0]);
    idades.add(infoPacientes[1]);
    profissoes.add(infoPacientes[2]);
    estados.add(infoPacientes[3]);
  }

  print("************** DESAFIO DE DART **************\n\n");

  print("O primeiro exercício está feito no código e não exije um output\n");

  print("Segundo exercício do desafio:");
  Exercicio2(pacientes);

  print("Terceiro exercício do desafio:");
  Exercicio3(pacientes, nomes, idades);

  print("Quarto exercício do desafio:");
  Exercicio4(profissoes);

  print("Quinto exercício do desafio:");
  Exercicio5(estados);
}

void Exercicio2(List<String> pacientes) {
  print("A quantidade de pacientes é ${pacientes.length}\n");
}

void Exercicio3(List<String> pacientes, List nomes, List idades) {
  for (var i = 0; i < pacientes.length; i++) {
    if (int.parse(idades[i]) > 20) {
      print("${nomes[i]} tem ${idades[i]} anos de idade");
    }
  }
  print("");
}

void Exercicio4(List profissoes) {
  var qtdDev = 0;
  var qtdEstudante = 0;
  var qtdDentista = 0;
  var qtdJornalista = 0;

  for (var profissao in profissoes) {
    if (profissao == "Desenvolvedor") {
      qtdDev++;
    } else if (profissao == "Estudante") {
      qtdEstudante++;
    } else if (profissao == "Dentista") {
      qtdDentista++;
    } else if (profissao == "Jornalista") {
      qtdJornalista++;
    }
  }

  print("A quantidade de Desenvolvedor é $qtdDev");
  print("A quantidade de Estudante é $qtdEstudante");
  print("A quantidade de Dentista é $qtdDentista");
  print("A quantidade de Jornalista é $qtdJornalista\n");
}

void Exercicio5(List estados) {
  var qtdMoradorSp = 0;
  for (var estado in estados) {
    if (estado == "SP") {
      qtdMoradorSp++;
    }
  }

  print("$qtdMoradorSp pessoas moram em São Paulo");
}

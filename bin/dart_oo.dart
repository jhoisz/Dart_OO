void main() {
  Legume mandioca = Legume('Macaxeira', 1200, 'Marrom', true);
  Fruta banana = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia = Nozes('Macadâmia', 2, 'Branco Amarelado', 'Doce', 20, 30);
  Citrica limao = Citrica('Limão', 100, 'Verde', 'Azedo', 5, 9);

  macadamia.printAlimento();
  mandioca.printAlimento();
  banana.printAlimento();
  limao.printAlimento();

  mandioca.cozinhar();
  macadamia.fazerMassa();
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  print("A $nome é $cor.");
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor.');
  }
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(super.nome, super.peso, super.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print('A sua $nome foi colhida a $diasDesdeColheita dias e precisa de'
        ' $diasParaMadura dias para poder comer!'
        'Ela está Madura? $isMadura');
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void assar() {
    print('Colocar no forno');
  }

  @override
  void fazerMassa() {
    print('Misturar fruta com farinha, ovos...');
  }

  @override
  void separarIngredientes() {
    print('Catar a fruta');
  }
}

class Legume extends Alimento implements Bolo {
  bool isPrecicaCozinhar;

  Legume(super.nome, super.peso, super.cor, this.isPrecicaCozinhar);

  void cozinhar() {
    if (isPrecicaCozinhar) {
      print('O $nome está cozinhando.');
    } else {
      print('Nem precisa cozinhar');
    }
  }

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }
}

class Citrica extends Fruta {
  double nivelAzedo;

  Citrica(super.nome, super.peso, super.cor, super.sabor,
      super.diasDesdeColheita, this.nivelAzedo);

  void existeRefri(bool existe) {
    existe
        ? print('Existe refri de $nome')
        : print('Não existe refri de $nome');
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(super.nome, super.peso, super.cor, super.sabor, super.diasDesdeColheita,
      this.porcentagemOleoNatural);

  @override
  void fazerMassa() {
    print('Tirar a casca');
    super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}

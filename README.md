<h1 align="center"> Dart: entendendo a Orientação a Objeto 🪑 </h1>

## ℹ️ Sobre

Conteúdo estudado no curso [Dart: entendendo a Orientação a Objetos](https://cursos.alura.com.br/course/dart-entendendo-orientacao-objetos), ensinado pelos instrutores [Kako (Caio Couto Moreira)](https://cursos.alura.com.br/user/kakomo2) e [Ricarth Lima](https://cursos.alura.com.br/user/ricarth-lima) na plataforma **[Alura](https://www.alura.com.br/)**.

## 📌 Assuntos

- **Funções:** Técnica para isolar um trecho de código com o objetivo de reutilizá-lo.
- `class`: Como criar uma classe e definir suas propriedades, construtores e métodos.
- `extends`: Como estender uma classe para herdar suas propriedades e métodos.
- `abstract`: Como criar uma classe abstrata para que contém métodos abstratos que serão usados pelas classes que a implementarem.
- `implements`: Como implementar uma classe abstrata em uma classe concreta.

## 📜 Paradigma de Orientação a Objetos

Existem diversos tipos de paradigmas da programação, como Funcional, Procedural, e **Orientação a Objetos**.

> _Qual a diferença entre Linguagem e Paradigma?_ Paradigma é uma ideia que rege uma linguagem, ou seja, cada linguagem adota determinado paradigma/regra na sua criação.

### Funções

> Exemplo de função do tipo `bool` que recebe uma quantidade de dias e retorna se uma fruta está ou não madura:

```dart
bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
```

### Parâmetros

Existem diversos tipos de parâmetros, **Posicionais Obrigatórios**, **Nomeados Opcionais**, **Parâmetros com "Padrão"** e com **Modificador _Required_**:

> Parâmetros **posicionais obrigatórios** devem estar numa determinada ordem e devem sempre ser fornecidos na chamada da função.

- Exemplo:

```dart
funcEstaMadura(String nome, int dias) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome está madura");
  }
}
```

> Parâmetros **nomeados opcionais** não precisam estar em determina posição mas recebem um nome para identificar na chamada da função.

- Exemplo:

```dart
funcEstaMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome está madura");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}
```

> Parâmetros **Parâmetros com "Padrão"** são parâmetros que recebem um valor padrão para caso não receba nenhuma informação na chamada da função.

- Exemplo:

```dart
funcEstaMadura(String nome, int dias, {String cor = "Verde"}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome está madura");
  }

  print("A $nome é $cor");
}
```

> Parâmetros com **Modificador _Required_** são parâmetros obrigatórios, geralmente usamos quando queremos nomear um parâmetro e ao mesmo tempo obrigar a ser necessário/requerido.

- Exemplo:

```dart
funcEstaMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome está madura");
  }

  print("A $nome é $cor");
}
```

### Escopo

Escopos são áreas de código em que tudo que está dentro dele pode ser usado apenas por ele. Por exemplo, uma função possui seu escopo determinado por `{}` e o que for criado dentro dela pertence a ela.

### Classes

Classes são utilizadas para representarmos objetos que possuem semelhanças em seus conceitos, características e ações. Exemplo:

```dart
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});
}
```

> Instancação do objeto do tipo `Fruta`:

```dart
Fruta fruta = Fruta("Uva", 40, "Roxa", "Doce", 20);
```

> 📢 Pode-se realizar ações dentro de um construtor, exemplo:

```dart
Fruta.minusculas(this.nome, this.cor){
  nome = nome.toLowerCase();
  cor = cor.toLowerCase();
}
```

### Herança

Herança é uma das características de OO, permite que classes compartilhem entre si propriedades e métodos, assim, reaproveitando código utilizando os conceitos de generalização (classe mãe com conceitos gerais do objeto) e especificação (classe filha com conceitos mais especifícos). Exemplo:

```dart
class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor.');
  }
}

class Legumes extends Alimento {
  bool isPrecicaCozinhar;

  Legumes(super.nome, super.peso, super.cor, this.isPrecicaCozinhar);
}
```

### Classe Abstrata

Classes abstratas são como moldes que obrigam as classes que a implementam a ter método obrigatórios.

Exemplo:

```dart
abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}

```

```dart
class Legume extends Alimento implements Bolo {

  //...

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
```

### Polimorfismo

Polimorfismo é a habilidade de um método que veio de uma classe mãe, para isso usamos o `@override`, exemplo:

```dart
  @override
  void fazerMassa() {
    print('Tirar a casca');
    super.fazerMassa();
  }
```

## ▶️ Como executar

Para executar qualquer um dos códigos você pode clonar o repositório, abrir a pasta do projeto e executar o arquivo `.dart`:

```
git clone https://github.com/jhoisz/Dart_OO
cd Dart_OO/bin
dart nomeDoCodigo.dart
```

<!-- A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`. -->

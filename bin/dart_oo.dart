void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool isMadura;

  print(toString(nome: nome, peso: peso, diasDesdeColheita: diasDesdeColheita));
}

String toString({
  required String nome,
  required double peso,
  required int diasDesdeColheita,
  int diasParaMadura = 30,
  bool? isMadura,
}) {
  isMadura ??= diasDesdeColheita >= diasParaMadura;

  String maduraString = "";
  if (!isMadura) {
    maduraString = "não ";
  }

  String result =
      "A $nome pesa $peso gramas! Ela foi colhida há  $diasDesdeColheita dias e precisa de  $diasParaMadura dias para amadurecer, logo, a $nome ${maduraString}está madura!";

  return result;
}

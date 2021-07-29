import '../utils/funcoes.dart';

void c005a041D1() {
//

  print("\nCurso Regex Udemy - Capitulo 5 - Aula 41 \nDesafios\n");

  const String stringCpf = '''
CPF dos aprovados:
    - 600.567.890-12
    - 765.998.345-23
    - 454.674.333-21
    - 678.987.123-87
    - 789.112.543-00
''';

  RegExp regex;

  /**
   * Buscando CPF
   */

  regex = RegExp(r"[\d]{3}\.[\d]{3}\.[\d]{3}\-[\d]{2}");
  imprimirResultado(regex, stringCpf);

  regex = RegExp(r"([\d]{3}\.){2}\d{3}\-\d{2}");
  imprimirResultado(regex, stringCpf);

//
}

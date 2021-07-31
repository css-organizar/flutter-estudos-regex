import '../../utils/funcoes.dart';

void c005a041D2() {
//

  print("\nCurso Regex Udemy - Capitulo 5 - Aula 41 \nDesafios\n");

  const String stringTelefone = '''
Lista telefônica:
    - (11) 98756-1212
    -98765-4321
    - (85) 99988-7766
    - (21)3261-8899
''';

  RegExp regex;

  /**
   * Buscando Telefones
   */

  regex = RegExp(r"\(?\d{0,2}\)?\s?\d{4,5}\-\d{4}");
  imprimirResultado(regex, stringTelefone);

  regex = RegExp(r"((\([\d]{2}\))\ *?)*?([\d]{4,5}\-[\d]{4})");
  imprimirResultado(regex, stringTelefone);

//
}

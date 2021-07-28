import '../commons/funcoes.dart';

void c002a015() {
//

  print("\nCurso Regex Udemy - Capitulo 2 - Aula 15 \nRodando RegeExp em Dart\n");

  RegExp regex;
  String texto = '''
  Pessoa 1 (111.111.111-11)
  Pessoa 2 (222.222.222-22)
  Pessoa 3 (333.333.333-33)
  Pessoa 4 (444.444.444-44)
  Pessoa 5 (555.555.555-55)
  Pessoa 6 (666.666.666-66)
  ''';

  regex = RegExp(
    r"^([0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2})$",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  imprimirResultado(regex, texto);

  regex = RegExp(
    r"^([0-9]{3}[.][0-9]{3}[.][0-9]{3}[-][0-9]{2})$",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  imprimirResultado(regex, texto);

  regex = RegExp(
    r"([0-9]{3})[.]([0-9]{3})",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  imprimirResultado(regex, texto);

  regex = RegExp(
    r"([0-9]{3})\.([0-9]{3})",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  imprimirResultado(regex, texto);

  regex = RegExp(
    r"([0-9]{3})\.([0-9]{3})\.([0-9]{3})\-([0-9]{2})",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  imprimirResultado(regex, texto);

  regex = RegExp(
    r"((\d{3})\.(\d{3})\.(\d{3})\-(\d{2}))",
    multiLine: true,
    dotAll: true,
    unicode: false,
    caseSensitive: true,
  );

  imprimirResultado(regex, texto);

//
}

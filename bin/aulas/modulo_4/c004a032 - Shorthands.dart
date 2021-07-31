import '../../utils/funcoes.dart';

void c004a032() {
//

  print("\nCurso Regex Udemy - Capitulo 4 - Aula 32 \Shorthands\n");

  RegExp regex;
  String texto;

  /**
   * Shorthand para caracteres
   */

  texto = "ABC [abc] a-c 1234";
  regex = RegExp(r"\w");
  imprimirResultado(regex, texto);

  /**
   * Shorthand para tudo que não for caracteres
   */

  texto = "ABC [abc] a-c 1234";
  regex = RegExp(r"\W");
  imprimirResultado(regex, texto);

  /**
   * Shorthand para números/dígitos
   */

  texto = "ABC [abc] a-c 1234";
  regex = RegExp(r"\d");
  imprimirResultado(regex, texto);

  /**
   * Shorthand para tudo que não for números/dígitos
   */

  texto = "ABC [abc] a-c 1234";
  regex = RegExp(r"\D");
  imprimirResultado(regex, texto);

  /**
   * Shorthand para espaços
   */

  texto = "ABC [abc] a-c 1234";
  regex = RegExp(r"\s");
  imprimirResultado(regex, texto);

  /**
   * Shorthand para tudo que não for espaços
   */

  texto = "ABC [abc] a-c 1234";
  regex = RegExp(r"\S");
  imprimirResultado(regex, texto);

//
}

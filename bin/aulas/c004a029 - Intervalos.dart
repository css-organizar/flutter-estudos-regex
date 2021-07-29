import '../utils/funcoes.dart';

void c004a029() {
//

  print("\nCurso Regex Udemy - Capitulo 4 - Aula 29 \Intervalos\n");

  RegExp regex;
  String texto;

  /**
   * Intervalo de letras minusculas de "a" até "z"
   */

  texto = "1,2,3,4,5,6,a.b c!d:e[f";
  regex = RegExp(r"[a-z]");
  imprimirResultado(regex, texto);

  /**
   * Intervalo de números de "0" até "9"
   */

  texto = "1,2,3,4,5,6,a.b c!d:e[f";
  regex = RegExp(r"[0-9]");
  imprimirResultado(regex, texto);

  /**
   * Intervalo de letras minusculas de "b" até "d"
   */

  texto = "1,2,3,4,5,6,a.b c!d:e[f";
  regex = RegExp(r"[b-d]");
  imprimirResultado(regex, texto);

  /**
   * Intervalo de letras e números "Sem a Flag [i]"
   */

  texto = "1,2,3,4,5,6,a.b c!d:e[f";
  regex = RegExp(r"[A-Z1-3]", caseSensitive: false);
  imprimirResultado(regex, texto);

  /**
   * Intervalo de letras e números "Flag [i]"
   */

  texto = "1,2,3,4,5,6,a.b c!d:e[f";
  regex = RegExp(r"[A-Z1-3]", caseSensitive: false);
  imprimirResultado(regex, texto);

//
}

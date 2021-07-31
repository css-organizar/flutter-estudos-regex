import '../../utils/funcoes.dart';

void c004a033() {
//

  print("\nCurso Regex Udemy - Capitulo 4 - Aula 33 \nConjuntos Negados\n");

  RegExp regex;
  String texto;

  /**
   * Filtra tudo que nao for número/dígito
   */

  texto = "1,2,3,a.b c!d?e[f";
  regex = RegExp(r"\D");
  imprimirResultado(regex, texto);

  /**
   * Negação do conjunto [0-9]
   */

  texto = "1,2,3,a.b c!d?e[f";
  regex = RegExp(r"[^0-9]");
  imprimirResultado(regex, texto);

  /**
   * Negação do conjunto [A-Za-z]
   */

  texto = "1,2,3,a.b c!d?e[f";
  regex = RegExp(r"[^A-Za-z]");
  imprimirResultado(regex, texto);

  /**
   * Filtrar negando do shorthand "\d"
   */

  texto = "1,2,3,a.b c!d?e[f";
  regex = RegExp(r"[^\d]");
  imprimirResultado(regex, texto);

  /**
   * Filtrar negando do shorthand "\w"
   */

  texto = "1,2,3,a.b c!d?e[f";
  regex = RegExp(r"[^\w]");
  imprimirResultado(regex, texto);

  /**
   * Filtrar negando o conjunto [0-9] e os simbolos da String
   */

  texto = "1,2,3,a.b c!d?e[f";
  regex = RegExp(r"[^0-9\ \.\?\[\,\!]");
  imprimirResultado(regex, texto);

//
}

import '../utils/funcoes.dart';

void c004a034() {
//

  print("\nCurso Regex Udemy - Capitulo 4 - Aula 34 \nIntervalos UNICODE\n");

  RegExp regex;
  String texto;

  /**
   * Conjunto de UNICODE
   */

  texto = "áéíóú àèìòù âêîôû ç ãõ ü";
  regex = RegExp(r"[À-ú]");
  imprimirResultado(regex, texto);

//
}

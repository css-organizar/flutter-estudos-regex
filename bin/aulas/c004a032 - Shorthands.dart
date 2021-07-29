import '../utils/funcoes.dart';

void c004a032() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 32 \Shorthands\n");

  RegExp regex;
  String texto;

  /**
   * Shorthands são atalhos para representar um
   * grupo de caracteres específicos facilitando a 
   * criação de expressões regulares
   */

  texto = "ABC [abc] a-c 1234";
  regex = RegExp(r"[a-c]");
  imprimirResultado(regex, texto);

//
}

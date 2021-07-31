import '../../utils/funcoes.dart';

void c005a035() {
//

  print("\nCurso Regex Udemy - Capitulo 5 - Aula 35 \nQuantificadores\n");

  RegExp regex;
  String texto;

  /**
   * Quantificadores
   */

  texto = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  regex = RegExp(r"[a-z]{3}");
  imprimirResultado(regex, texto);

  texto = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  regex = RegExp(r"[0-9]{10}");
  imprimirResultado(regex, texto);

  texto = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  regex = RegExp(r"[A-z]{5}");
  imprimirResultado(regex, texto);

//
}

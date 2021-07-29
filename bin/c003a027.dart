import 'funcoes.dart';

void c003a027() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 27 \Caracteres Unicode\n");

  RegExp regex;
  String texto;

  /**
   * Unicode: Bytes variáveis
   * Mais de 100.00 caracteres atribuídos
   * 
   * 02AC - ʬ
   * 0BF5 - ௵
   */

  texto = "aʬc௵d";
  regex = RegExp(r"\u02AC|\u0BF5", unicode: true);
  imprimirResultado(regex, texto);

//
}

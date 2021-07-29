import '../utils/funcoes.dart';

void c005a037() {
//

  print("\nCurso Regex Udemy - Capitulo 5 - Aula 37 \nQuantificadores Específicos\n");

  const String texto1 = "De longe eu avistei o fogo e uma pessoa gritando: FOGOOOOOO!";
  const String texto2 = "There is a big fog in NYC";

  RegExp regex;

  /**
   * Quantificadores
   * Buscar pela expressão fogo, case insensitive com o
   * último "o" podenso ter uma ou várias ocorrências
   */

  regex = RegExp(r"fogo+", caseSensitive: false);
  imprimirResultado(regex, texto1);
  imprimirResultado(regex, texto2);

  const String texto3 = "Os números: 0123456789";

  /**Listar todos os dígitos */
  regex = RegExp(r"\d");
  imprimirResultado(regex, texto3);

  /**Listar o máximo de dígitos lado a lado */
  regex = RegExp(r"\d+");
  imprimirResultado(regex, texto3);

//
}

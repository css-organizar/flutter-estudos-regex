import '../utils/funcoes.dart';

void c005a036() {
//

  print("\nCurso Regex Udemy - Capitulo 5 - Aula 36 \nQuantificadores Condicionados\n");

  const String texto1 = "De longe eu avistei o fogo e uma pessoa gritando: FOGOOOOOO!";
  const String texto2 = "There is a big fog in NYC";

  RegExp regex;

  /**
   * Quantificadores
   * Buscar pela expressão fogo, case insensitive com o
   * último "o" opcional
   */

  regex = RegExp(
    r"fogo?",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto1);
  imprimirResultado(regex, texto2);

//
}

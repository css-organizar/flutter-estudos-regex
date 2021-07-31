import '../utils/funcoes.dart';

void c005a038() {
//

  print("\nCurso Regex Udemy - Capitulo 5 - Aula 38 \nQuantificadores Com NULO\n");

  const String texto1 = "De longe eu avistei o fogo e uma pessoa gritando: FOGOOOOOO!";
  const String texto2 = "There is a big fog in NYC";

  RegExp regex;

  /**
   * Quantificadores
   * Buscar pela expressão fogo, case insensitive com o
   * último "o" podenso ter nenhuma ou várias ocorrências
   */

  regex = RegExp(
    r"fogo*",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto1);
  imprimirResultado(regex, texto2);

  /**
   * Quantificadores
   * Buscar pela expressão fogo, case insensitive com o
   * último "o" podenso ter nenhuma ou várias ocorrências
   * 
   * Observe o uso do "?" para limitar ao mínimo possível de
   * caracteres selecionados
   * 
   */

  regex = RegExp(
    r"fogo*?",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto1);
  imprimirResultado(regex, texto2);

//
}

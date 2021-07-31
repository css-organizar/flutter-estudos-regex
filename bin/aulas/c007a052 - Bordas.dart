import '../utils/funcoes.dart';

void c007a052() {
//

  print("\nCurso Regex Udemy - Capitulo 7 - Aula 52 \nBordas\n");

  String texto;
  RegExp regex;

  /**Exemplo 01 */

  texto = "Romário era um excelente jogador\n, mas hoje é um político questionador";

  /**
   * Trazer todos os "r" case insensitive
   */

  regex = RegExp(
    r"r",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Trazer todos os "r" case insensitive
   * como primeira posição "^" aqui indica inicio da linha
   */

  regex = RegExp(
    r"^r",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Trazer todos os "r" case insensitive
   * como ultima posição "$" aqui indica final da linha
   */

  regex = RegExp(
    r"r$",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Trazer todos os "r" case insensitive
   * onde o "r" inicia com r e finaliza com "r"
   * traz null pois o "\n" nao é resolvido
   */

  regex = RegExp(
    r"^r.*r$",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Melhorando a expressão anterior com DotAll funciona
   */

  regex = RegExp(
    r"^r.*r$",
    caseSensitive: false,
    dotAll: true,
  );
  imprimirResultado(regex, texto);

//
}

import '../utils/funcoes.dart';

void c006a047() {
//

  print("\nCurso Regex Udemy - Capitulo 6 - Aula 47 \nGrupos Aninhados\n");

  String texto;
  RegExp regex;

  /**Exemplo 01 */

  texto = "supermercado hipermercado minimercado mercado";

  /**
   * Trabalhando com os valores informados e o mercado opicional
   * */

  regex = RegExp(r"(super|hiper|mini)?mercado");
  imprimirResultado(regex, texto);

  /**
   * Trabalhando com os valores com as
   * iniciais comparando "hi" e "su" seguidas de per
   * ou mini
   * ambos os grupos opcionais seguidos de "mercado"
   * */

  regex = RegExp(r"((hi|su)per|mini)?mercado");
  imprimirResultado(regex, texto);

//
}

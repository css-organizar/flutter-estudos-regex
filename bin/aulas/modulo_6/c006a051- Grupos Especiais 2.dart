import '../../utils/funcoes.dart';

void c006a051() {
//

  print("\nCurso Regex Udemy - Capitulo 6 - Aula 51 \nGrupos Especiais 2\n");

  String texto;
  RegExp regex;

  /**Exemplo 01 */

  texto = "supermercado superação hiperMERCADO Mercado";

  /**
   * Utiliza um grupo que nao armazena "(?:super)"
   * Busca tudo que inicia com super
   * possui letras e letras com acento
   */

  regex = RegExp(
    r"(?:super)[\wÀ-ú]+",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Utiliza o Positive Lookbehind
   * "?<=" Somente o que deu match em "super"
   * traz o resto ou seja só as palavras que
   * tem "super" antes
   */

  regex = RegExp(
    r"(?<=super)[\wÀ-ú]+",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Utilia o Negative Lookbehind
   * "?<!" Somente o que nao deu match em "super"
   * traz o resto ou seja só as palavras que
   * não tem "super" antes
   */

  regex = RegExp(
    r"(?<!super)mercado",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

//
}

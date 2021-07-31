import '../../utils/funcoes.dart';

void c006a050() {
//

  print("\nCurso Regex Udemy - Capitulo 6 - Aula 50 \nGrupos Especiais 1\n");

  String texto;
  RegExp regex;

  /**Exemplo 01 */

  texto = "João é calmo, mas no transito fica nervoso.";

  /**
   * Dentro de um conjunto o grupo nao existe
   * [(abc)] - Insto nao é um grupo
   * */

  /** Positive lookahead */

  /**
   * Selecionar todas as palavras do texto
   * incluindo os caracteres UNICODE
   */

  regex = RegExp(
    r"[\wÀ-ú]+",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Selecionar todas as palavras do texto
   * utilizando o "Positive lookahead" selecionando a plavras
   * criando um grupo que seleciona palavras pegando apenas oque
   * tem "," na frente do grupo de caracteres
   */

  regex = RegExp(
    r"[\wÀ-ú]+(?=,)",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Selecionar todas as palavras do texto
   * utilizando o "Positive lookahead" selecionando a plavras
   * criando um grupo que seleciona palavras pegando apenas oque
   * tem "." na frente do grupo de caracteres
   */

  regex = RegExp(
    r"[\wÀ-ú]+(?=\.)",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Selecionar todas as palavras do texto
   * utilizando o "Positive lookahead" selecionando a plavras
   * criando um grupo que seleciona palavras pegando apenas oque
   * tem ", mas" na frente do grupo de caracteres
   */

  regex = RegExp(
    r"[\wÀ-ú]+(?=, mas)",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /** Negative lookahead */

  /**
   * Selecionar todas as palavras do texto
   * utilizando o "Negative lookahead" selecionando a plavras
   * criando um grupo que seleciona palavras pegando apenas oque
   * não estão a frente de ","
   * 
   * "\b" - é uma borda, será abordado mais a frente
   * No caso ele nao pegou o "é" pois este foi considerado uma borda
   * as bordas consideram caracteres acentuados como bordas
   * 
   */

  regex = RegExp(
    r"[\wÀ-ú]+\b(?!,)",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Melhorando a Expressão anterior retirando a borda e 
   * colocando um espaço "\s" ou um "." depois o "Negative lookahead"
   * 
   * Ele vai pegar todas as palavras porém com um "\s" espaço
   * ou "." junto
   * 
   */

  regex = RegExp(
    r"[\wÀ-ú]+[\s|\.](?!,)",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

//
}

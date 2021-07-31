import '../../utils/funcoes.dart';

void c007a054() {
//

  print("\nCurso Regex Udemy - Capitulo 7 - Aula 53 \nMultiline\n");

  String texto;
  RegExp regex;

  /**Exemplo 01 */

  texto = '''
Leo é muito legal
Emanuel foi jogar em Sergipe
Bianca é casada com Habib
''';

  /**
   * No dart a String multi linha não pega
   * como linha se nao colocar nada depois dos "'''"
   * neste caso sao apenas 3 quebras de linha
   */

  regex = RegExp(
    r"\n",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Pego o primeiro caracter da linha, capturo no grupo
   * "(\w)" pegando o retrovisor no final da linha
   * nao traz nada pois ele acha o "\n" quebra de linha e
   * ignora
   */

  regex = RegExp(
    r"^(\w).+\1$",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Correção da Expressão anterior agora com multiline
   * agora funciona pois ignora o "\n" quebra de linha
   * considerando cada uma das linhas de forma independente
   */

  regex = RegExp(
    r"^(\w).+\1$",
    caseSensitive: false,
    multiLine: true,
  );
  imprimirResultado(regex, texto);

  /**Se colocar um ponto no final ele ja ignora a linha */

  texto = '''
Leo é muito legal
Emanuel foi jogar em Sergipe.
Bianca é casada com Habib
''';

  regex = RegExp(
    r"^(\w).+\1$",
    caseSensitive: false,
    multiLine: true,
  );
  imprimirResultado(regex, texto);

  /**
   * Se colocar um ponto no final ele ja ignora a linha
   * mais se eu adicionar um "\." na expressão ele passa a pegar
   * somente a linha do retovisor com ponto no final
   * 
  */

  texto = '''
Leo é muito legal
Emanuel foi jogar em Sergipe.
Bianca é casada com Habib
''';

  regex = RegExp(
    r"^(\w).+\1\.$",
    caseSensitive: false,
    multiLine: true,
  );
  imprimirResultado(regex, texto);

//
}

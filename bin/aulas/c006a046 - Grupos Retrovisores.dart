import '../utils/funcoes.dart';

void c006a046() {
//

  print("\nCurso Regex Udemy - Capitulo 6 - Aula 46 \nGrupos Retrovisores\n");

  String texto;
  RegExp regex;

  /**Exemplo 01 */

  /**
   * Neste exemplo utiliza-se o retrovisor <\/\1> para ele buscar o grupo gerado
   * anteriomente na Expressão Regular aproveitando o valor informado
   * */

  texto = "<b>Destaque</b><strong>Forte</strong><div>Conteudo</div>";
  regex = RegExp(r"<(\w+)>.*<\/\1>");
  imprimirResultado(regex, texto);

  /**
   * Neste exemplo a tab de fechamento do primeiro grupo esta em UPPERCASE
   * Isto gera uma falha na busca
   * */

  texto = "<b>Destaque</B><strong>Forte</strong><div>Conteudo</div>";
  regex = RegExp(r"<(\w+)>.*<\/\1>");
  imprimirResultado(regex, texto);

  /**
   * Correção do exemplo anterior, passando o "caseSensitive: false"
   * isto resolve o problema
   * */

  texto = "<b>Destaque</B><strong>Forte</strong><div>Conteudo</div>";
  regex = RegExp(
    r"<(\w+)>.*<\/\1>",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**Exemplo 02 */

  /**
   * Exemplo não utilizando os retrovisores e sim o "*"
   * para pegar todo conteúdo após o grupo
   */

  texto = 'Lentamente é mente muito lenta.';
  regex = RegExp(
    r"(lenta)(mente).*",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Utilizando os retovisores realizando a busca até
   * parar no retroviso "\2" logo ele irá parar no grupo de
   * caracteres "mente"
   * 
   * Observe que o "\2" vai pegar o conteúdo do segundo grupo de retrovisores logo
   * Grupo 1: (lenta)
   * Grupo 2: (mente)
   * 
   * Como utilizei o \2 ele vai parar no segundo grupo no caso (mente)
   * 
   */

  texto = 'Lentamente é mente muito lenta.';
  regex = RegExp(
    r"(lenta)(mente).*\2",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Utilizando os retovisores realizando a busca até
   * parar no retroviso "\2" porem ao colocar o ".*" e o segundo
   * retrovisor com "\1" logo ele irá parar no grupo de
   * caracteres "lenta"
   * 
   * Observe que o \2 vai pegar o conteúdo do segundo grupo de retrovisores logo
   * Grupo 1: (lenta)
   * Grupo 2: (mente)
   * 
   * Como utilizei o \1 ele vai parar no segundo grupo no caso (lenta)
   * 
   */

  texto = 'Lentamente é mente muito lenta.';
  regex = RegExp(
    r"(lenta)(mente).*\2.*\1",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Complementando a Expressão anterior incluindo o "\." para
   * ele parar no caractere ponto completando assim toda a string
   * 
   */

  texto = 'Lentamente é mente muito lenta.';
  regex = RegExp(
    r"(lenta)(mente).*\2.*\1\.",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Neste exemplo utilizo os retrovisores para buscar os dados porém
   * estou utilizando o "?:" para nao armazenar o grupo nos retrovisores
   * ao informar o "\1" este não é mais o (lenta) e sim o (mente)
   * 
   */

  texto = 'Lentamente é mente muito lenta.';
  regex = RegExp(
    r"(?:lenta)(mente).*\1",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**Exemplos adicionais */

  regex = RegExp(
    r"(lenta)(mente)",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  regex = RegExp(
    r"(lenta)(mente)?",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Realizando um replace na String para o grupo 2
   * Observe que para esta substituição é usado o método
   * "replaceAllMapped" para utilizar o grupo gravado
   * na execução da Expressão
   * 
   * match.group(0) = Conteúdo localizado
   * match.group(1) = lenta
   * match.group(2) = mente
   * 
   */

  regex = RegExp(
    r"(lenta)(mente)",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);
  print(
    texto.replaceAllMapped(
      regex,
      (match) {
        return '"Valor do Grupo(2): ${match.group(2)}"';
      },
    ),
  );

  /**
   * Curiosidade 
   * Verificando a quantidade de grupos que são suportados
   *   No caso o \12 captura o "l" e joga um novo valor ao final
   */

  texto = 'abcdefghijkll';
  regex = RegExp(
    r"(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)(k)(l)\12",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

//
}

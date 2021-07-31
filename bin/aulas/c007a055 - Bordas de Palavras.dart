import '../utils/funcoes.dart';

void c007a055() {
//

  print("\nCurso Regex Udemy - Capitulo 7 - Aula 55 \nBordas de Palavras\n");

  String texto;
  RegExp regex;

  /**Palavras sem acento */

  /**
   * Tudo de inicia com dia
   * "\b" utiliza a borda no inicio da palavra
   */

  texto = "dia diatonico diafragma media wikipedia bom_dia melodia radial";
  regex = RegExp(
    r"\bdia\w+",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Tudo de termina com dia
   * "\b" utiliza a borda no final da palavra
   */

  texto = "dia diatonico diafragma media wikipedia bom_dia melodia radial";
  regex = RegExp(
    r"\w+dia\b",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Palavras com dia no meio da palavra
   * não necessita de borda
   */

  texto = "dia diatonico diafragma media wikipedia bom_dia melodia radial";
  regex = RegExp(
    r"\w+dia\w+",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Borda no inicio e no fim, traz apenas a palavra
   */

  texto = "dia diatonico diafragma media wikipedia bom_dia melodia radial";
  regex = RegExp(
    r"\bdia\b",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**Palavras com acento */

  /**
   * "\b" é o ooposto de "\w"
   * caracteres acentuados sao considerados bordas
   * buscando tudo que tem dia entre bordas mais
   * ele traz 4 registros pois pegou tudo que tem acento
   * como borda
   */

  texto = "dia diatônico diafragma, média wikipédia bom-dia melodia radial";
  regex = RegExp(
    r"\bdia\b",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Para resolver eu coloco um grupo "(\S)?" não espaços opcional
   * assim ele traz as "," virgulas e acentos
   */

  texto = "dia diatônico diafragma, média wikipédia bom-dia melodia radial";
  regex = RegExp(
    r"(\S*)?dia(\S*)?",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Outra forma é utilizar um grupo "([\wÀ-ú-]*)?" opcional
   * ignorando a "," pegando só os caracteres desejados
   * no grupo
   */

  texto = "dia diatônico diafragma, média wikipédia bom-dia melodia radial";
  regex = RegExp(
    r"([\wÀ-ú-]*)?dia([\wÀ-ú-]*)?",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

//
}

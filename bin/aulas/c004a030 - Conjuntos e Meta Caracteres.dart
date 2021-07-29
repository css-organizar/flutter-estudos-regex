import '../utils/funcoes.dart';

void c004a030() {
//

  print("\nCurso Regex Udemy - Capitulo 4 - Aula 30 \Conjuntos e Meta Caracteres\n");

  RegExp regex;
  String texto;

  /**
   * Observe que na variável foi necessário o "\"
   * para reconhecer o "$" como caractere, já no conjunto
   * tudo que esta entro de um conjunto funciona como
   * um caractere literal não é necessário
   * utilizar o "\ - escape"
   */

  texto = ".\$+*?-";
  regex = RegExp(r"[+.?*$]");
  imprimirResultado(regex, texto);

  /**
   * O caracter "-" dentro do conjunto funciona como
   * um intervalo
   */

  texto = ".\$+*?-";
  regex = RegExp(r"[$-?]");
  imprimirResultado(regex, texto);

  /**
   * O caracter "-" dentro do conjunto funciona como
   * um intervalo porem com o "\ - escape" ele vira um
   * caractere literal
   */

  texto = ".\$+*?-";
  regex = RegExp(r"[$\-?]");
  imprimirResultado(regex, texto);

  /**
   * Dependendo a ordem o "-" também nao funciona como
   * intervalo mais náo está entre caracteres, o scape
   * seria necessário apenas se fosse entre outros 2
   * caracteres
   * 
   * Caracteres que becessitam de escape
   *   -, [, ], ^
   * 
   */

  texto = ".\$+*?-";
  regex = RegExp(r"[-?]");
  imprimirResultado(regex, texto);

//
}

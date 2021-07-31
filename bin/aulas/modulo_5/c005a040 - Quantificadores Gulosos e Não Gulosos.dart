import '../../utils/funcoes.dart';

void c005a040() {
//

  print("\nCurso Regex Udemy - Capitulo 5 - Aula 40 \nQuantificadores Gulosos e Não Gulosos\n");

  const String texto = "<div>Conteúdo 01</div><div>Conteúdo 02</div>";

  RegExp regex;

  /**
   * Quantificadores
   * Guloso (greedy): Pega o máximo possível, logo seleciona todo o texto
   */

  regex = RegExp(r"<div>.+<\/div>");
  imprimirResultado(regex, texto);
  regex = RegExp(r"<div>.*<\/div>");
  imprimirResultado(regex, texto);
  regex = RegExp(r"<div>.{0,}<\/div>");
  imprimirResultado(regex, texto);

  /**
   * Quantificadores
   * Não Guloso (non-greedy/lazy): Pega o máximo possível até o valor de delimitação
   */

  regex = RegExp(r"<div>.+?<\/div>");
  imprimirResultado(regex, texto);
  regex = RegExp(r"<div>.*?<\/div>");
  imprimirResultado(regex, texto);
  regex = RegExp(r"<div>.{0,}?<\/div>");
  imprimirResultado(regex, texto);

//
}

import '../utils/funcoes.dart';

void c004a028() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 28 \Conjuntos\n");

  RegExp regex;
  String texto;

  /**
   * Buscando ocorrência de um elemento do conjunto
   * entre colchetes
   */

  texto = "1,2,3,4,5,6,a.b c!d:e[f";
  regex = RegExp(r"[02468]");
  imprimirResultado(regex, texto);

  /**
   * Buscando as letras com acento e sem acento
   */

  texto = "João não vai passear na moto.";
  regex = RegExp(r"n[aã]");
  imprimirResultado(regex, texto);

//
}

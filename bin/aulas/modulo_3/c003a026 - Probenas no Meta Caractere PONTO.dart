import '../../utils/funcoes.dart';

void c003a026() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 26 \Probenas no Meta Caractere PONTO\n");

  RegExp regex;
  String texto;

  /**O "." separa o "\t - tab" */
  texto = "Bom\tdia";
  regex = RegExp(r".");
  imprimirResultado(regex, texto);

  /**já "\n - quebra de linha" o ponto nao resolve sozinho */
  texto = "Bom\ndia";
  regex = RegExp(r"Bom.dia");
  imprimirResultado(regex, texto);

  /**
   * No Dart com o dotAll ele tenta resolver o "\n" no "." 
   * ele força no "." a interpretação de todos os
   * caracteres inclusive o "\n - quebra de linha"
   * */
  texto = "Bom\ndia";
  regex = RegExp(
    r"Bom.dia",
    dotAll: true,
  );
  imprimirResultado(regex, texto);

  /**
   * Retorna qualquer ocorrência de 3 caracteres quaisquer
   * ignorendo o "\n"
  */
  texto = "Bom\ndia";
  regex = RegExp(r"...");
  imprimirResultado(regex, texto);

  /** 
   * Retorna qualquer ocorrência de 3 caracteres quaisquer
   * incluindo o "\t - tab"
  */
  texto = "Bom\tdia";
  regex = RegExp(r"...");
  imprimirResultado(regex, texto);

  /** 
   * Resultado nulo pois ele procura 4 caracteres e nao considera
   * o "\n - quebra de linha logo nao existe sequencia de 4
   * caracteres disponível"
  */
  texto = "Bom\ndia";
  regex = RegExp(r"....");
  imprimirResultado(regex, texto);

  /** 
   * Já com o "\t - tab" funciona pois ele pega o "\t"
   * como o quarto caractere
  */
  texto = "Bom\tdia";
  regex = RegExp(r"....");
  imprimirResultado(regex, texto);

//
}

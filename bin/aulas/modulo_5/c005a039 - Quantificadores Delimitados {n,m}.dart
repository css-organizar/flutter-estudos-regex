import '../../utils/funcoes.dart';

void c005a039() {
//

  print("\nCurso Regex Udemy - Capitulo 5 - Aula 39 \nQuantificadores Delimitados {n,m}\n");

  const String texto = "O João recebeu 120 milhões apostando 6 9 21 23 45 46";

  RegExp regex;

  /**
   * Quantificadores
   * Buscar todas as ocorrências com 1 ou 2 digitos
   */

  regex = RegExp(r"\d{1,2}");
  imprimirResultado(regex, texto);

  /**
   * Quantificadores
   * Buscar todas as ocorrências com extatamente 2 digitos
   */

  regex = RegExp(r"[0-9]{2}");
  imprimirResultado(regex, texto);

  /**
   * Quantificadores
   * Buscar todas as ocorrências com o máximo de dígitos possíveis
   */

  regex = RegExp(r"[0-9]{1,}");
  imprimirResultado(regex, texto);

  /**
   * Quantificadores
   * Buscar todos os grupos de caracteres com 7 dígitos
   * 
   * Obs: a palavra milhões nao veio pois letras acentuadas não
   * estão no grupo de digitos selecionados logo ele nao
   * considera como digitos agrupados
   * 
   */

  regex = RegExp(r"\w{7}");
  imprimirResultado(regex, texto);

  /**
   * Quantificadores
   * Buscar todos os grupos de caracteres com 7 dígitos
   * 
   * Obs: Agora ele traz a palavra milhões pois foi previsto
   * 
   */

  regex = RegExp(r"[\wõ]{7,}");
  imprimirResultado(regex, texto);

//
}

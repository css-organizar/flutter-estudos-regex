import '../../commons/funcoes.dart';

void c002a009() {
//

  print("\nCurso Regex Udemy - Capitulo 2 - Aula 09 \nFlags\n");

  String texto;
  RegExp regex;

  /**
   * A função "allMatches" Age como se fosse uma expressão com o flag "g - global" 
   */

  texto = "AaAaAa";
  regex = RegExp("a");
  var match1 = regex.allMatches(texto);
  print(match1);

  /**
   * A função "allMatches" Age como se fosse uma expressão com o flag "g - global"
   * O parâmetro "caseSensitive" age como se fosse o flaf "i - ignore case"
   */
  texto = "AaAaAa";
  regex = RegExp("a", caseSensitive: false);
  var match2 = regex.allMatches(texto);
  print(match2);

//
}

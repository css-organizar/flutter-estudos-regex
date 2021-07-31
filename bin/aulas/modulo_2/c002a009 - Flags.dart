import '../../utils/funcoes.dart';

void c002a009() {
//

  print("\nCurso Regex Udemy - Capitulo 2 - Aula 09 \nFlags\n");

  String texto;
  RegExp regex;
  var match;

  /**
   * A função "allMatches" Age como se fosse uma expressão com o flag "g - global" 
   */

  texto = "AaAaAa";
  regex = RegExp("a");
  match = regex.allMatches(texto);
  print(match);

  /**
   * O parâmetro "caseSensitive" age como se fosse o flaf "i - ignore case"
   */

  texto = "AaAaAa";
  regex = RegExp(
    "a",
    caseSensitive: false,
  );
  match = regex.allMatches(texto);
  print(match);

  /**
   * O parâmetro "multiLine" age como se fosse o flaf "m - Multiline"
   */

  texto = "AaAaAa";
  regex = RegExp(
    "a",
    multiLine: true,
  );
  match = regex.allMatches(texto);
  print(match);

//
}

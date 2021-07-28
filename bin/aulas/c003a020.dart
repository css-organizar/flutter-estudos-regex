import '../commons/funcoes.dart';

void c003a020() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 20 \nMeta Caracteres\n");

  /* . ? * + - ^ $ | [ ] { } ( ) \ */

  RegExp regex;
  const String texto = "1,2,3,4,5,6,a.b c!d?e";

  regex = RegExp(
    "[.]",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  print(regex.allMatches(texto));
  print(regex.firstMatch(texto));
  print(regex.hasMatch(texto));
  print(regex.matchAsPrefix(texto));
  print(regex.stringMatch(texto));

  print(texto.split(regex));

  print(
    texto.splitMapJoin(
      regex,
      onMatch: (m) {
        return '${m[0]!}';
      },
    ),
  );

  print(
    texto.splitMapJoin(
      regex,
      onNonMatch: (n) {
        return '*';
      },
    ),
  );

//
}

import '../commons/funcoes.dart';

void spliStringRegex() {
//

  print("\nSplit de String Utilizando Regex\n");

  /* . ? * + - ^ $ | [ ] { } ( ) \ */

  RegExp regex;
  const String texto = "part1.parte2.parte3";

  regex = RegExp(
    r"[.]",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  print(
    texto.splitMapJoin(
      regex,
      onMatch: (m) {
        return ' -> ${m} ';
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

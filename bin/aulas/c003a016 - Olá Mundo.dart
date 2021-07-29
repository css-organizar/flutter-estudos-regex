import '../utils/funcoes.dart';

void c003a016() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 16 \nOlá Mundo!\n");

  const String texto = "Casa bonita é casa amarela da esquina com ACASALAR";
  RegExp regexp;
  var match;

  regexp = RegExp(
    "\casa",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  imprimirResultadoLoop(regexp, texto);

  regexp = RegExp(
    "\a b",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  imprimirResultadoLoop(regexp, texto);

//
}

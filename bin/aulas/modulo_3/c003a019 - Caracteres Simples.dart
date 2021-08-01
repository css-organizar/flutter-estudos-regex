import '../../utils/funcoes.dart';

void c003a019() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 19 \nCaracteres Simples\n");
  RegExp regexVirgula;
  const String texto = "1,2,3,4,5,6,a.b c!d?e";

  regexVirgula = RegExp(
    r"\,",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  imprimirResultado(regexVirgula, texto);

  regexVirgula = RegExp(
    r"\.",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  imprimirResultado(regexVirgula, texto);

  regexVirgula = RegExp(
    r"\A",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  imprimirResultado(regexVirgula, texto);

  /**
   * Os parênteses agrupam um valor ou condição para busca
   * Se colocar um valor fora ele vai fazer isoladamente cara caractere
  */

  regexVirgula = RegExp(
    r"\(b c!d)",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  imprimirResultado(regexVirgula, texto);

//
}

import '../../utils/funcoes.dart';

void c004a031() {
//

  print("\nCurso Regex Udemy - Capitulo 4 - Aula 31 \Cuidados com Intervalos\n");

  RegExp regex;
  String texto;

  /**
   * Intervalo normal!!
   */

  texto = "ABC [abc] a-c 1234";
  regex = RegExp(r"[a-c]");
  imprimirResultado(regex, texto);

  /**
   * Intervalo somente se tiver dentro dos colchetes
   */

  texto = "ABC [abc] a-c 1234";
  regex = RegExp(r"a-c");
  imprimirResultado(regex, texto);

  /**
   * O intervalo usa a ordem da tabela UNICODE
   * A...Z...[...]...a...z...ect...
   */

  texto = "ABC [abc] a-c 1234";
  regex = RegExp(r"[A-z]");
  imprimirResultado(regex, texto);

  /**
   * O intervalo deve respeitar a ordem da tabela UNICODE
   * A...Z...[...]...a...z...ect...
   * não pode inverter
   * a-Z...
   * Erro!!
   */

  try {
    texto = "ABC [abc] a-c 1234";
    regex = RegExp(r"[a-Z]");
    imprimirResultado(regex, texto);
  } catch (e) {
    print("\nErro: ${e.toString()}");
  }

//
}

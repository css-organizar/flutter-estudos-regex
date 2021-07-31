import '../../utils/funcoes.dart';

void c006a049() {
//

  print("\nCurso Regex Udemy - Capitulo 6 - Aula 49 \nCuidados com Grupos\n");

  String texto;
  RegExp regex;

  /**Exemplo 01 */

  texto = "Pedrinho (filho do Pedro Silva) é doutor do ABCabc!";

  /**
   * Dentro de um conjunto o grupo nao existe
   * "[(abc)]" - Insto nao é um grupo
   * */

  regex = RegExp(
    r"[(abc)]",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Um conjunto sobrevive dentro do grupo
   * Dentro de um grupo o conjunto é um conjunto
   * */

  regex = RegExp(
    r"([abc])",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Grupo sem o conjunto
   * Obs: Utilize grupo somente se necessário
   * neste caso náo há necessidade de um grupo
   * */

  regex = RegExp(
    r"(abc)+",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

//
}

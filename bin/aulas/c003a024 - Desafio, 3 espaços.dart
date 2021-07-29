import '../utils/funcoes.dart';

void c003a024() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 24 \nDesafio dos 3 espaços\n");

  RegExp regex;
  String texto;

  /**
   *
   * Construir expressões para localizar os 3 espaços
   * 
   * */

  texto = "a   b";

  regex = RegExp(r"   ");
  imprimirResultado(regex, texto);

  regex = RegExp(r"[ ]{3}");
  imprimirResultado(regex, texto);

  regex = RegExp(r"\ {3}");
  imprimirResultado(regex, texto);

  /**
   *
   * Construir expressões para localizar "a   b" com os 3 espaços
   * 
   * */

  regex = RegExp(r"a   b");
  imprimirResultado(regex, texto);

  regex = RegExp(r"a\s\s\sb");
  imprimirResultado(regex, texto);

  /**
   * 
   * Este caso "r"a\s+b"" daria problema pois ele encontraria
   * mais ocorrencias do espaço entre "a" e "b" independente da
   * quantidade pois o mais atua como um repetidor
   * 
  */

  regex = RegExp(r"a\s+b");
  imprimirResultado(regex, texto);

  regex = RegExp(r"a( {3})b");
  imprimirResultado(regex, texto);

  regex = RegExp(r"a\s{3}b");
  imprimirResultado(regex, texto);

  regex = RegExp(r"a[ ]{3}b");
  imprimirResultado(regex, texto);

//
}

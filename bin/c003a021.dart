import 'funcoes.dart';

void c003a021() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 21 \nMeta Caracteres - Ponto\n");

  RegExp regex;
  String texto;

  /**
   * 
   * No caso o "1.2" vai buscar no texto tudo que tenha o caracter "1"
   * com "um caracter" no meio em seguida o caracter "2"
   * O valor é localizado
   * 
   * */

  texto = "1,2,3,4,5,6,7,8,9";
  regex = RegExp(
    r"1.2",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  /**
   * 
   * Não localiza nada pois busca "2 caracteres" entre os números "1" e "2" 
   * 
   * */

  texto = "1,2,3,4,5,6,7,8,9";
  regex = RegExp(
    r"1..2",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  /**
   * 
   * Não localiza nada pois busca utilizando o ponto como literal
   * Neste caso ele busca por 1.2
   * 
   * */

  texto = "1,2,3,4,5,6,7,8,9";
  regex = RegExp(
    r"1\.2",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  /**
   * 
   * No caso abaixo ele busca por "1.2" e encontra na string o 
   * valor correspondente "1.2" ai da certo
   * 
   * */

  texto = "1.2,3,4,5,6,7,8,9";
  regex = RegExp(
    r"1\.2",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  /**
   * 
   * No caso o 1.., vai buscar no texto tudo que tenha o caracter "1"
   * com "dois caracteres" no meio em seguida o caracter ","
   * 
   * Neste caso ele encontra "1,2," pois entende que ",2" são os dois caracteres em "1" e ","
   * 
   * */

  texto = "1,2,3,4,5,6,7,8,9";
  regex = RegExp(
    r"1..,",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  /**
   *
   *  
   * 
   * */

  texto = "8.3,7.1,8.8,10.0";
  regex = RegExp(
    r"8..",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  /**
   *
   *  
   * 
   * */

  texto = "8.3,7.1,8.8,10.0";
  regex = RegExp(
    r".\..",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

//
}

import 'funcoes.dart';

void c003a023() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 23 \nCaracteres brancos\n");

  RegExp regex;
  String texto;

  /**
   *
   * Busca em multi linhas
   * 
   * */

  texto = '''
ca	r
r	o s!
  ''';

  regex = RegExp(
    r"ca",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  /**Utilizando "\t" = tab */

  regex = RegExp(
    r"ca\t",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  regex = RegExp(
    r"ca\tr",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  /**Utilizando "\n" = nova linha */

  regex = RegExp(
    r"ca\tr\n",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  /**Utilizando "\t" "\n" */

  regex = RegExp(
    r"ca\tr\nr\to s!",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

//
}

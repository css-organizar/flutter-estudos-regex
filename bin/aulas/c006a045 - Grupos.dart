import '../utils/funcoes.dart';

void c006a045() {
//

  print("\nCurso Regex Udemy - Capitulo 6 - Aula 45 \nGrupos\n");

  String string;

  RegExp regex;

  /**
   * Grupo ()
   */

  regex = RegExp(r"(he){5}");
  string = "O José Simão é muito engraçado... hehehehehe";
  imprimirResultado(regex, string);

  regex = RegExp(r"(https?:\/\/)?(www\.)?\w+\.\w{2,}(\.\w{2})?");
  string = '''
http://www.site.info
https://www.siteseguro.info
www.escola.ninja.br
google.com.ag
''';
  imprimirResultado(regex, string);

//
}

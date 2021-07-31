import '../utils/funcoes.dart';

void c008a061() {
//

  print("\nCurso Regex Udemy - Capitulo 8 - Aula 61 \nReceitas\n");

  String texto;
  RegExp regex;

  texto = '''
123456
cod3r
QUASE123!
#OpA1
#essaSenhaEGrande1234

#OpA1?
Foi123!
''';

  /**
   * Buscar qualquer senha com de 6 a 20 caracteres
   *   - Necessita do "multiline=true"
   */

  regex = RegExp(
    r"^.{6,20}$",
    multiLine: true,
  );
  imprimirResultado(regex, texto);

  /**
   * Utiliza o "Positive lookahead"
   * pega quem inicia com qualquer caracteres e
   * que tenha letras maiusculas de A e Z
   * com de 6 a 20 caracteres
   */

  regex = RegExp(
    r"^(?=.*[A-Z]).{6,20}$",
    multiLine: true,
  );
  imprimirResultado(regex, texto);

  /**
   * Utiliza o "Positive lookahead"
   *  - Letras maiusculas
   *  - Letras minusculas
   *  - um digito
   *  - caracteres especiais
   */

  regex = RegExp(
    r"^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%!^&*]).{6,20}$",
    multiLine: true,
  );
  imprimirResultado(regex, texto);

//
}

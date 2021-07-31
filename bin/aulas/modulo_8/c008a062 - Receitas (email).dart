import '../../utils/funcoes.dart';

void c008a062() {
//

  print("\nCurso Regex Udemy - Capitulo 8 - Aula 62 \nReceitas\n");

  String texto;
  RegExp regex;

  texto = '''
Os e-mails dos convidados são:
    - fulano@cod3r.com.br
    - xico@gmail.com
    - joao@empresa.info.br
    - maria_silva@registro.br
    - rafa.sampaio@yahoo.com
    - fulano+de+tal@escola.ninja.br
''';

  /**
   * Desta vez utilizando grupos
   *  - Inicia com "\S" nao pega espaçp
   *  - o @
   *  - varios caracteres
   *  - "." literal
   *  - primeiro ponto ate 6 caracteres
   *  - grupo final com "." e 2 caracteres opcional
   */

  regex = RegExp(
    r"\S+@\w+\.\w{2,6}(\.\w{2})?",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

//
}

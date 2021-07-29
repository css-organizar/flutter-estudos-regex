import '../utils/funcoes.dart';

void c005a041D3() {
//

  print("\nCurso Regex Udemy - Capitulo 5 - Aula 41 \nDesafios\n");

  const String stringEmail = '''
Os e-mails dos convidados são:
    - fulano@cod3r.com.br xx
    - xico@gmail.com xx
    - joao@empresa.info.br xx
    - maria_silva@registro.br xx
    - rafa.sampaio@yahoo.com xx
    - teste.teste@teste.teste.com.br xx
    - teste_teste@teste_teste.com.br xx
    - professor@escola.edu xx
    - usuario@nomeusuario.dev xx
''';

  RegExp regex;

  /**
   * Buscando E-mail
   */

  regex = RegExp(r"\w.*?\@\w.+\.\w{2,4}\.?\w{0,2}");
  imprimirResultado(regex, stringEmail);

  regex = RegExp(r"[\w.]+@\w.+\.\w{2,4}\.?\w{0,2}");
  imprimirResultado(regex, stringEmail);

  regex = RegExp(r"[\w.]+@\w.+\.\w{2,4}\.?(\w{2})?");
  imprimirResultado(regex, stringEmail);

//
}

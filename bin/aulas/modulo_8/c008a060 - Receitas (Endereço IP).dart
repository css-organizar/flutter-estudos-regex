import '../../utils/funcoes.dart';

void c008a060() {
//

  print("\nCurso Regex Udemy - Capitulo 8 - Aula 60 \nReceitas\n");

  String texto;
  String expStr;
  RegExp regex;

  /**
   * Faixa de IPv4 válido
   *  - 
   */

  texto = '''
Inválidos:
  - 192.268.0.1
  - 1.333.1.1
  - 192.168.0.256
  - 256.256.256.256

Válidos:
  - 192.168.0.1
  - 127.0.0.1
  - 10.0.0.255
  - 10.11.12.0
  - 255.255.255.255
  - 0.0.0.0
''';

  /**
   * Exemplo com um grupo e um quantificador
   * desta forma fica um pouco maior mais naoo necessita de utilizar
   * interpolação de string no RegExp
   */

  regex = RegExp(
    r"((\b(\d{1,2}|1\d{2}|2[0-4]\d|25[0-5])\b)\.){3}(\b(\d{1,2}|1\d{2}|2[0-4]\d|25[0-5])\b)",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * Neste exemplo utiliza-se uma String bruta para a Expressão Regular
   * desta froma eu posso jogar uma interpolação de String dentro do RegExp
   * 
   *  - Observe que eu tenho que usar o escape "\" nos caracteres especificos
   *    na minha String da interpolação nos caracteres "\\b" e "\\d"
   * 
   */

  expStr = "\\b(\\d{1,2}|1\\d{2}|2[0-4]\\d|25[0-5])\\b";
  regex = RegExp(
    "\\b$expStr\\.$expStr\\.$expStr\\.$expStr\\b",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  /**
   * 
   * AQUI UM TESTE PARA O DART!!!! 
   * Assim fica muito mais simples!!!!
   * 
   * Teste com String bruta quantificador e interpolação de string
   *  - Observe que eu tenho que usar o escape "\" nos caracteres especificos
   *    como no "\{" e no "\}" no RegExp e na minha String da interpolação
   *    nos caracteres "\\b" e "\\d"
   */

  expStr = "(\\b(\\d{1,2}|1\\d{2}|2[0-4]\\d|25[0-5])\\b)";
  regex = RegExp(
    "($expStr\\.)\{3\}$expStr",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

//
}

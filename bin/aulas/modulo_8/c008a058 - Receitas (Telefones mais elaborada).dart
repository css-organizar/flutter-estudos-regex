import '../../utils/funcoes.dart';

void c008a058() {
//

  print("\nCurso Regex Udemy - Capitulo 8 - Aula 58 \nReceitas\n");

  String texto;
  RegExp regex;

  texto = '''
Lista telefônica:
    - (21) 12345-6789
    - (11) 62300-2234
    - 5678-7771
    - (85)3333-7890
    - (1) 4321-1234
''';

  /**
   * 
   * Telefones
   * 
   *  - Grupo 1 (Opcional) - "(\(\d{2}\)\s?)?"
   *   - Excape com "("
   *   - DDD com obrigatoriamente 2 números
   *   - Excape com ")"
   *   - "\s?" para um espaço opcional
   * 
   *  - Completa com a expressão simples para o telefone
   *   - primeira parte com de 4 a 5 dígitos "\d{4,5}"
   *   - segundo parte com o "-" e obrigatoriamente 4 digitos {-\d{4}}
   * 
   */

  regex = RegExp(
    r"(\(\d{2}\)\s?)?\d{4,5}-\d{4}",
    caseSensitive: false,
    dotAll: true,
    multiLine: true,
  );
  imprimirResultado(regex, texto);

//
}

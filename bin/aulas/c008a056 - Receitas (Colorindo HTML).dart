import '../utils/funcoes.dart';

void c008a056() {
//

  print("\nCurso Regex Udemy - Capitulo 8 - Aula 56 \nReceitas\n");

  ///
  /// Função para aplicar as alterações no código HTML
  ///  - Recebe um texto
  ///  - Recebe a expressão regular
  ///  - Recebe a cor
  ///
  /// Pega o texto com a Expressão regular e substitui
  /// no HTML, neste caso a expressão tem que ser
  /// feita com grupos pois utiliza-se um retrovisor para
  /// capturar e substituir a TAG <SPAN>
  ///
  ///

  String aplicarCor(
    String codigoHtml,
    RegExp regexp,
    String cor,
  ) {
    return codigoHtml.replaceAllMapped(
      regexp,
      (match) {
        String resultado = '<span style="color: #$cor"><b>${match.group(0)}</b></span>';
        return resultado;
      },
    );
  }

  String textoHtml;
  RegExp regex;

  /**
   * No caso ele vai aplicar cores em um HTML
   * como estamos no Dart vai ficar apenas no String
   * do campo nao vai carregar no browser
   * 
   * Exercício apenas para mostrar as possibilidades
   * 
   */

  textoHtml = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Código Fonte</title>
    <style>
        code { font-size: 26px; }
    </style>
</head>
<body>
    <h1>Código Fonte</h1>
    <pre>
        <code>
package cod3r;

\/*
 * Imprimir a nota do aluno
 *\/
 
public class Nota {

    \/\/ Porta de entrada de um programa Java

    public static void main(String[] args) {
        int nota = 7;

        if(nota >= 7) {
            System.out.println("Aprovado");
        } else {
            System.out.println("Reprovado");
        }
    }
}
        </code>
    </pre>
</body>
</html>
''';

  String resultadoHtml = textoHtml;

  /**
   * String
   * Cria-se um grupo neste caso para string
   * pega tudo que inicia e termina com aspas duplas "..."
   */
  regex = RegExp(
    r'(\".*\")',
    caseSensitive: false,
  );
  resultadoHtml = aplicarCor(textoHtml, regex, 'ce9178');

  /** 
   * palavras reservadas
   * Cri-se um grupo e busca as palavras reservadas no
   * no caso o grupo esta utilizando borda no inicio
   * e no fim para buscar a palavra exata
   * caso da string do exemplo busca por
   *   - package
   *   - public
   *   - class
   *   - static
   *   - if
   *   - else
   */
  regex = RegExp(
    r'\b(package|public|class|static|if|else)\b',
    caseSensitive: false,
  );
  resultadoHtml = aplicarCor(resultadoHtml, regex, 'd857cf');

  /**
   * tipos
   * Idêntico ao anterior só que com os tipos
   *  - void
   *  - int
   */
  regex = RegExp(
    r'\b(void|int)\b',
    caseSensitive: false,
  );
  resultadoHtml = aplicarCor(resultadoHtml, regex, '1385e2');

  /**
   * comentários de multiplas linhas
   * Neste caso para comentarios de multiplas
   * linhas utilizo os parametros "dotAll" e "multiLine"
   * para ele ignorar o "\n" e pegar todos os caracteres
   */
  regex = RegExp(
    r'(\/\*.+\*\/)',
    caseSensitive: false,
    dotAll: true,
    multiLine: true,
  );
  resultadoHtml = aplicarCor(resultadoHtml, regex, '267703');

  /**
   * comentários de uma linha
   * Para comentario de uma linha ele busca até o "\n"
   */
  regex = RegExp(
    r'(\/\/.*?\n)',
    caseSensitive: false,
  );
  resultadoHtml = aplicarCor(resultadoHtml, regex, '267703');

  print(resultadoHtml);

//
}

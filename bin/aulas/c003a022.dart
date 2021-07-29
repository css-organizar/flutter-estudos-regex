import '../commons/funcoes.dart';

void c003a022() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 22 \nDesafio, Lista de arquivos\n");

  RegExp regex;
  String texto;

  /**
   *
   * Pegar todas as referências a .mp3
   * Observe que foi utilizado um r"" antes da string para possibilitar
   * utilizar o meta caractere "\"
   * 
   * */

  texto = "Lista de arquivos mp3: jazz.mp3,rock.mp3,podcast.mp3,blues.mp3";
  regex = RegExp(
    r"\.mp3",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  /**
   *
   * Sem o r"" ele considera p "\" um caracteres
   * 
   * */

  texto = "Lista de arquivos mp3: jazz.mp3,rock.mp3,podcast.mp3,blues.mp3";
  regex = RegExp(
    "\.mp3",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

  /**
   *
   * Pegar todas as referências aos nomes completos dos arquivos .mp3
   * Observe que foi utilizado um r"" antes da string para possibilitar
   * utilizar os meta caracteres "\w" "+" "\"
   * 
   * */

  texto = "Lista de arquivos mp3: jazz.mp3,rock.mp3,podcast.mp3,blues.mp3";
  regex = RegExp(
    r"\w+\.mp3",
    multiLine: false,
    caseSensitive: false,
    unicode: false,
    dotAll: false,
  );

  imprimirResultado(regex, texto);

//
}

import '../utils/funcoes.dart';

void c006a046() {
//

  print("\nCurso Regex Udemy - Capitulo 6 - Aula 46 \nGrupos Retrovisores\n");

  String texto;

  RegExp regex;

  texto = "<b>Destaque</b><strong>Forte</strong><div>Conteudo</div>";
  regex = RegExp(r"<(\w+)>.*<\/\1>");
  imprimirResultado(regex, texto);

  texto = "<b>Destaque</B><strong>Forte</strong><div>Conteudo</div>";
  regex = RegExp(r"<(\w+)>.*<\/\1>");
  imprimirResultado(regex, texto);

  texto = "<b>Destaque</B><strong>Forte</strong><div>Conteudo</div>";
  regex = RegExp(r"<(\w+)>.*<\/\1>", caseSensitive: false);
  imprimirResultado(regex, texto);

  // const texto2 = 'Lentamente é mente muito lenta.'
  // console.log(texto2.match(/(lenta)(mente).*\2.*\1\./gi))
  // console.log(texto2.match(/(?:lenta)(mente).*\1/gi)) // ?: não guarda

  // console.log(texto2.match(/(lenta)(mente)/gi))
  // console.log(texto2.match(/(lenta)(mente)?/gi))
  // console.log(texto2.replace(/(lenta)(mente)/gi, '$2'))

  // const texto3 = 'abcdefghijkll'
  // console.log(texto3.match(/(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)(k)(l)\12/g))

//
}

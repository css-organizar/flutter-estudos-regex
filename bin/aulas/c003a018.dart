void c003a018() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 18 \nCuidados com RegExp\n");

  const String texto = "1,2,3,4,5,6,a.b c!d?e";
  RegExp regexVirgula = RegExp(
    "\,",
    multiLine: true,
    caseSensitive: false,
    unicode: false,
    dotAll: true,
  );

  var match1 = regexVirgula.allMatches(texto);
  var match2 = regexVirgula.firstMatch(texto);
  var match3 = regexVirgula.hasMatch(texto);
  var match4 = regexVirgula.stringMatch(texto);

  print("Match 01: $match1");
  print("Match 02: $match2");
  print("Match 03: $match3");
  print("Match 04: $match4");

  print(match1.map((d) {
    return "\"${d.group(0)}\"";
  }).toList());

  for (RegExpMatch m in match1) {
    print("Valor: ${m.group(0)}");
  }

//
}

void imprimirResultado(
  RegExp regex,
  String texto, {
  bool returnList = false,
}) {
//

  var regexHasMatch = regex.hasMatch(texto);
  var regexAllMatch = regex.allMatches(texto);

  print("");
  print("Texto informado: $texto");
  print("Pattern Aplicado: ${regex.pattern}");
  print(" - " + "Localizou na String:".padRight(25, ".") + " ${regexHasMatch ? "Sim" : "Não"}");
  print(" - " + "Ocorrências:".padRight(25, ".") + " ${regexAllMatch.length}");

  if (returnList) {
    print(regexAllMatch.map((v) => v[0]).toList());
  } else {
    if (regexAllMatch.length > 0) {
      print("   Lista de valores localizados:");
      for (RegExpMatch r in regexAllMatch) {
        print("  -> Valor: \"${r.group(0)}\"");
      }
    }
  }

//
}

void imprimirResultadoLoop(
  RegExp regex,
  String texto,
) {
//

  var match = regex.allMatches(texto);

  for (RegExpMatch r in match) {
    print("RegExpMatch: ".padRight(30, ".") + "$r");
    print("RegExpMatch.input: ".padRight(30, ".") + "${r.input}");
    print("RegExpMatch.hashCode: ".padRight(30, ".") + "${r.hashCode}");
    print("RegExpMatch.groupCount: ".padRight(30, ".") + "${r.groupCount}");
    print("RegExpMatch.group(0): ".padRight(30, ".") + "${r.group(0)}");
    print("RegExpMatch.start: ".padRight(30, ".") + "${r.start}");
    print("RegExpMatch.end: ".padRight(30, ".") + "${r.end}");
    print("RegExpMatch.pattern: ".padRight(30, ".") + "${r.pattern}");
  }

//
}

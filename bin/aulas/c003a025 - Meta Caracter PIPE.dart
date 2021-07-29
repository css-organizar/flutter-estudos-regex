import '../utils/funcoes.dart';

void c003a025() {
//

  print("\nCurso Regex Udemy - Capitulo 3 - Aula 25 \nMeta Caractere Pipe\n");

  RegExp regex;
  String texto;

  texto = "Você precisa responder sim, não ou não sei!";

  regex = RegExp(r"(sim)|(não)|(sei)");
  imprimirResultado(regex, texto);

  regex = RegExp(r"(sim)|(não)|(não.sei!)");
  imprimirResultado(regex, texto);

//
}

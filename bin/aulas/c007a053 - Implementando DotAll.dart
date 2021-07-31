import '../utils/funcoes.dart';

void c007a053() {
//

  print("\nCurso Regex Udemy - Capitulo 7 - Aula 53 \nImplementando DotAll (Opcional Dart ja tem)\n");

  String texto;
  RegExp regex;

  /**Exemplo 01 */

  texto = "Romário era um excelente jogador\n, mas hoje é um político questionador";

  /**
   * Totalmente desnecessário no Dart mais segue 
   * implementação do DotAll por curiosidade
   * 
   * Primeiro teste nao traz nada
   * Segundoo teste por colocar "[\s\S]" ele passa a aceitar
   * 
   * Terceiro exemplo no Dart lembrando o dart tem
   * o "dotAll: true" que resolve isto
   * 
   */

  regex = RegExp(
    r"^r.*r$",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  regex = RegExp(
    r"^r[\s\S]*r$",
    caseSensitive: false,
  );
  imprimirResultado(regex, texto);

  regex = RegExp(
    r"^r.*r$",
    caseSensitive: false,
    dotAll: true,
  );
  imprimirResultado(regex, texto);

//
}

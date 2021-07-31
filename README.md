# <strong> Exemplo de Utilização de Expressões Regulares com Dart </strong>

Repositório de Exemplos Criados com Base no Curso de Regex do <strong> Cod3R </strong> na plataforma UDEMY
 - [UDEMY - Fundamentos de Expressões Regulares (Regex)](https://www.udemy.com/course/curso-regex/)

Literatura indicada
 - [Expressões Regulares Cookbook: Soluções detalhadas em oito linguagens de programação](https://www.amazon.com/Express%C3%B5es-Regulares-Cookbook-detalhadas-programa%C3%A7%C3%A3o-ebook/dp/B07YBM728N)
 - [Expressões Regulares - 5a edição: Uma Abordagem Divertida](https://www.amazon.com.br/Express%C3%B5es-Regulares-Uma-Abordagem-Divertida/dp/8575224743/ref=asc_df_8575224743/?tag=googleshopp00-20&linkCode=df0&hvadid=379748659420&hvpos=&hvnetw=g&hvrand=9930736693242346207&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9101046&hvtargid=pla-423044219264&psc=1)
 - [Beginning regular expressions](https://www.amazon.com.br/Beginning-Regular-Expressions-Andrew-Watt/dp/0764574892)

# <strong> O que são Expressões Regulares ? </strong>

Uma expressão regular (ou "regex") é um padrão de pesquisa usado para corresponder a um ou mais caracteres num corda. Ele pode corresponder caracteres específicos, curingas e intervalos de caracteres. Expressões regulares foram originalmente usadas por Unix utilitários, como vi e grep. No entanto, agora eles são suportados por muitas edições de código. aplicações e processadores de texto em várias plataformas. Expressões regulares também podem ser usadas na maioria dos linguagens de programação.

Uma expressão regular pode ser tão simples quanto uma string básica, como "app". O regex"app"corresponderia a seqüências contendo as palavras" apps "," applications "e" inaplicable ". Uma expressão regular também pode conter caracteres âncora (" ^ "e" $ "), usados ??para especificar o início e o final de uma linha, respectivamente. Portanto, o regex "^ aplicativos"corresponderia à sequência", os aplicativos são ótimos ", mas não corresponderia à sequência" Eu gosto de aplicativos ".

Expressões regulares podem incluir traços, que são usados ??para corresponder a um intervalo de caracteres, como todas as letras minúsculas. Por exemplo, a regex "[az]"corresponderia a" aplicativos ", mas não corresponderia às seqüências de caracteres" Apps "ou" 123 ". A expressão regular"[A-Za-z]"corresponderia a" Apps "e"[0-9]"corresponderia a" 123 ". Um período, que é o padrão curinga caractere em expressões regulares, pode ser usado para corresponder a qualquer caractere (exceto um caractere de fim de linha). Um período seguido por um asterisco (. *) Corresponde a zero ou mais instâncias, enquanto um período seguido por um sinal de mais (. +) Corresponde a uma ou mais instâncias.

Então, o que acontece se você precisar corresponder a uma sequência que contenha um traço, asterisco, mais ou um caractere âncora? Esses caracteres podem ser incluídos em um padrão de expressão regular "escapando" deles com uma barra invertida ("\"). Por exemplo, para pesquisar "$ 0.99", a regex seria "\ $ 0 \ .99". As barras invertidas também são usadas para procurar caracteres não imprimíveis. Por exemplo," \ r "corresponde a um retorno de carro," \ n "corresponde a uma nova linha e" \ t "corresponde a um caractere de tabulação.

Embora não seja necessário muito esforço para criar uma expressão regular básica, escrever uma regex avançada não é uma tarefa fácil. Mesmo os melhores programadores raramente obtêm expressões regulares complexas logo na primeira vez. Quando usadas corretamente, no entanto, expressões regulares são uma ferramenta poderosa para pesquisar, localizar e substituir texto específico.

A expressão regular relaciona todas as ocorrências (matches) de um padrão (pattern) em um trecho de texto (subject).

| termo	    | significado
| - | -
| matches	| Casar, encontrar, combinar, ocorrências, conferir, encaixar e igualar.
| pattern	| Padrão, a expressão regular propriamente dita. String de padrão de procura.
| subject	| Texto que será vasculhado por nossa expresão regular.

# <strong> Como Executar RegExp no Dart </strong>

```dart

void main() {

  /*
   * Expressão Regular
   *  - inicia-se com o "r" depois a String da Expressão "[a-c]"
   * Exemplo:
   *  - r"[a-c]"
  */

  /* String do Texto a Ser Analisado*/

  String texto = "ABC [abc] a-c 1234";

  /*
   * Criando a Expressão regular
   * Parâmetros
   *  - caseSensitive: corresponde a flag "i" ignora UPPER e LOWER
   *  - dotAll: faz o ponto funcionar sobre quebra de linha e tab
   *  - multiLine: trata expressões em strings com mais de uma linha
   *  - unicode: trata caracteres UNICODE
   */

  RegExp regex = RegExp(r"[a-c]");

  /*
   * Executando a Expressão regular
   *  - allMatches: corresponde a utilizar a flag "g" busca global
   *  - hasMatch: retorna true ou false caso a Regex encontre dados
   *  - firstMatch: busca a primeira ocorrência
   *  - stringMatch: busca a string da primeira ocorrência
   */

  var match = regex.allMatches(texto);

  print(match);

}
```

#  <strong> Conteúdo Abordado </strong>

 * Como Utilizar as Expressões Regulares no Dart
 * Utilização dos Caracteres e Meta Caracteres
 * Conjuntos
 * Quantificadores
 * Grupos
 * Bordas
 * <strong>!! EXTRA !! - Algumas receitas para Expressões Regulares </strong>

#  <strong> Shorthand List </strong>

## <strong> Basics </strong>

| Shorts | Descrição
| -      | -
| *      | Match preceding character 0 or more times
| +      | Match preceding character 1 or more times
| .      | atch any single character
| x\|y   | Match either 'x' or 'y'
| \      | Escape a special character
| b      | The character b
|abc     | The string abc

## <strong> Character Classes I </strong>

| Shorts | Descrição
| -      | -
| \d     | Match a digit character
| \D     | Match a non-digit character
| \s     | Match a single white space character (space, tab, form feed, or line feed)
| \S     | Match a single character other than white space
| \w     | Match any alphanumeric character (including underscore)
| \W     | Match any non-word character

## <strong> Character Classes II </strong>

| Shorts | Descrição
| -      | -
[abc]    | Match any one of the characters in the set 'abc'
[^abc]   | Match anything not in character set 'abc'
[\b]     | Match a backspace

## <strong> Assertions </strong>

| Shorts | Descrição
| -      | -
| ^      | Match beginning of input
| $      | Match end of input
| \b     | Match a word boundary
| \B     | Match a non-word boundary
| ?=     | Lookahead
| ?!     | Negative lookahead

## <strong> Assertions II </strong>

| Shorts | Descrição
| -      | -
| ?<=    | Lookbehind
| ?<!    | Negative lookbehind
| ?>     | Once-only subexpression
| ?()    | If then condition
| ?()\|  | If then else condition
| ?#     | Comment

## <strong> Quantifiers </strong>

| Shorts | Descrição
| -      | -
| {n}    | Match exactly n occurrences of preceding character
| {n,m}  | Match at least n and at most m occurrences of the preceding character
| ?      | Match 0 or 1

## <strong> Special Characters I </strong>

| Shorts | Descrição
| -      | -
| \cX    | Match control character X in a string
| \n     | Match a line feed
| \r     | Match a carriage return
| \t     | Match a tab
| \0     | Match a NULL

## <strong> Special Characters II </strong>

| Shorts | Descrição
| -      | -
| \f     | Match a form feed
| \v     | Match a vertical tab
| \xhh   | Match character with code hh (2 hex digits)
| \uhhhh | Match character with code hhhh (4 hex digits)

## <strong> Flags </strong>

| Shorts | Descrição
| -      | -
| g      | Global search
| i      | Case-insensitive search
| m      | Multi-line search
| y      | "sticky" search match starting at current position in target string

## <strong> Groups </strong>

| Shorts | Descrição
| -      | -
| (x)    | Match 'x' and remember the match
| (?:x)  | Match 'x' but do not remember the match
| \n     | A back reference to the last substring matching the n parenthetical in the regex
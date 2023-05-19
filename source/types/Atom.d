module types.Atom;
import std.regex;
import types.Expression;

class Atom : Expression {
  private char[] value;

  this(char[] val) {
    value = val;
    type = "atom";
  }

  public char[] getValue() {
    return value;
  }

  // public static bool isAtom(Expression exp) {
  //   const auto numberRgx = `[0-9]+(?:\.?[0-9])*`;
  //   const auto stringRgx = `\"[^\"]*\"`;
  //   const auto symbolRgx = `[a-zA-Z0-9\-]+`;

  //   auto numberMatch = matchFirst(exp, numberRgx);
  //   auto stringMatch = matchFirst(exp, stringRgx);
  //   auto symbolMatch = matchFirst(exp, symbolRgx);

  //   return numberMatch.hit.length == exp.length 
  //     || stringMatch.hit.length == exp.length 
  //     || symbolMatch.hit.length == exp.length;
  // }

}
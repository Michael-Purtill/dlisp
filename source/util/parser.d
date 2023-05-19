module util.parser;
import ast.AST;
import types.Atom;
import std.stdio;

//char[] code = ['(','+',' ','1',' ','2',' ','(','*',' ','3',' ','4',')',')'];

AST subParser(char[][] tokens, ref uint cursor) {
  while (cursor != tokens.length) {

    if (tokens[cursor] != "(") {
      return new AST(null, new Atom(tokens[cursor++]), true);
    }
    else if (tokens[cursor] == "(") {
      cursor += 1;

      AST[] subTrees;
       while(tokens[cursor] != ")") {
        subTrees ~= subParser(tokens, cursor); 
      }
      cursor += 1;
      return new AST(subTrees, null, false);
    }
    // else if (tokens[cursor] == ")") {
    //   return null;
    // }
    cursor += 1;
  }

  return null;
}


AST parse(char[][] tokens) {
  uint cursor = 0;

  return subParser(tokens, cursor);
}
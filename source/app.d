import std.stdio;
import types.Expression;
import types.Atom;
import util.scanner;
import ast.AST;
import util.parser;

void main()
{
  char[] code = ['(',' ', '+',' ','1',' ','2', '5',' ','(','*',' ','3',' ','4',')', '5', '2', ' ', '(', ' ', '*', ' ', '2',' ', '3', ' ', ')', ' ', '4', ' ', ')'];

  auto tokens = scan(code);
  
  AST ast = parse(tokens);

  ast.print(0);
}
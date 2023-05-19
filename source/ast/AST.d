module ast.AST;
import std.stdio;
import types.Atom;

//char[] code = ['(',' ','+',' ','1',' ','2', '5',' ','(','*',' ','3',' ','4',')', '5', '2', ' ', '(', ' ', '*', ' ', '2',' ', '3', ' ', ')', ' ', '4', ' ', ')'];

class AST {
  public AST[] members;

  public Atom value;

  public bool isLeaf;

  this(AST[] mem, Atom val, bool isL) {
    members = mem;
    value = val;
    isLeaf = isL;
  }

  private char[] tabGenerator(uint tabWidth) {
    char[] tabs;

    for (uint i = 0; i < tabWidth; i++) {
      tabs ~= '\t';
    }

    return tabs;
  }

  public void print(uint tabWidth) {
    if (isLeaf == true) {
      write(tabGenerator(tabWidth));
      writeln(value.getValue(), ' ');
    }
    else {
      writeln();
      // writeln(members.length, 'm');
      foreach(member; members) {
        member.print(tabWidth + 1);
      }

      tabWidth += 1;
    }
  }
}
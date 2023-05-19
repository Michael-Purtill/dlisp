module util.scanner;
import std.array;
import std.regex;
import std.algorithm;

char[] preformat(char[] srcCode) {
     return srcCode.replace("(", " ( ").replace(")", " ) ");
}

char[][] scan(char[] srcCode) {
     return array(array(splitter(preformat(srcCode), regex(`[ ]+`))).filter!(a => a != " " && a != ""));
}
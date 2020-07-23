// Valid Parentheses

bool falseValidParentheses(String braces) {
  // Your code here
  if (braces == "") {
    return true;
  }
  
  if (braces.length % 2 == 0) {
    if (braces[0] == "(" && braces[braces.length - 1] == ")") {
      int startBrace = 0;
      int endBrace = 0;
      for (var i = 0; i < braces.length; i++) {
        if (braces[i] == "(")
          startBrace++;
        else if (braces[i] == ")")
          endBrace++;
        else return false;
      }

      if (startBrace == endBrace) return true;
      else return false;
    } else return false;
  } else return false;
}

bool validParentheses(String braces) {
  if (braces == "") return true;

  if (braces.length % 2 == 0) {
    if (braces[0] == "(") {
      if (braces.contains(")")) {
        var newBraces = braces;
        newBraces = newBraces.replaceFirst("(", "", 0);
        newBraces = newBraces.replaceFirst(")", "", 0);

        if (newBraces == "") return true;
        else return validParentheses(newBraces);
      } else return false;
    } else return false;
  } else return false;
}

main(List<String> args) {
  print(validParentheses("()()()"));
  new RegExp("()()())");
}
class A {

  bool isValid(String s) {
    if (s.isEmpty) return true;
    s.split("");

    List<String> parenthesisStack = [];
    for (var i = 0; i < s.length; i++) {
      if (s[i] == "(" ||
          s[i] == "{" ||
          s[i] == "[" && parenthesisStack.isEmpty) {
        return false;
      } else if (s[i] == "(" && parenthesisStack.last == ")" ||
          s[i] == "{" && parenthesisStack.last == "}" ||
          s[i] == "[" && parenthesisStack.last == "]") {
        parenthesisStack.removeLast();
      } else {
        parenthesisStack.add(s[i]);
      }
    }

    return parenthesisStack.length == 0;
  }
}
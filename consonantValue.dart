bool isConsonant(String character) {
  if (character == "a" || character == "e" || character == "i" || character == "o" || character == "u") {
    return false;
  } else {
    return true;
  }
}

int solve(String s) {
  // your code here
  int highestValue = 0;
  bool wasConsonant = false;
  int streakSum = 0;

  for (var i = 0; i < s.length; i++) {
    if (isConsonant(s[i])) {
      int charValue = s[i].codeUnitAt(0) - 96;
      if (wasConsonant == true) {
        streakSum += charValue;
      } else {
        streakSum += charValue;
        if (streakSum > highestValue)
          highestValue = streakSum;
      }
      wasConsonant = true;
    } else {
      if (streakSum > highestValue) {
        highestValue = streakSum;
      }
      wasConsonant = false;
      streakSum = 0;
    }
  }

  if (streakSum > highestValue) {
    highestValue = streakSum;
  }

  print(highestValue);
  return highestValue;  
}


main(List<String> args) {
  solve("fjv");
}
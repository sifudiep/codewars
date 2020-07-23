String addLetters(List<String> letters) {
  // your code here
  int letterSum = 0;
  for (var i = 0; i < letters.length; i++) {
    letterSum += letters[i].codeUnitAt(0) - 97;
  }

  while (letterSum > 26) {
    letterSum -= 26;
  }
  
  letterSum += 97;
  
  return new String.fromCharCode(letterSum);
}

main(List<String> args) {
  
}
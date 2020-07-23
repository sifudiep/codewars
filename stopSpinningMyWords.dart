String spinWords(String str) {
  var words = str.split(" ");
  for (var i = 0; i < words.length; i++) {
    if (words[i].length >= 5) {
      String reversedWord = "";
      for (var j = words[i].length - 1; j >= 0; j--) {
        reversedWord += words[i][j];
      }
      words[i] = reversedWord;
    }
  }

  var wordToBeReturned = "";
  for (var i = 0; i < words.length; i++) {
    if (i != 0) {
      wordToBeReturned += " ";
    }

    wordToBeReturned += words[i];
  }

  return wordToBeReturned;
}

main(List<String> args) {
  print(spinWords("hel lo FRIENDS"));
}  
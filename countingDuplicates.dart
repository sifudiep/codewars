// Counting Duplicates

int duplicateCount(String text){
  // your code goes below
  var memory = Map<String, int>();
  var lowerCased = text.toLowerCase();
  int res = 0;

  for (var i = 0; i < lowerCased.length; i++) {

    if (memory[lowerCased[i]] == null) {
      memory[lowerCased[i]] = 1;
    } else {
      memory[lowerCased[i]]++;
    }
  }

  memory.forEach((letter, number) {
    if (number > 1) {
      res++;
    } 
  });

  return res;
}


main(List<String> args) {
  duplicateCount("aabBcde");
}

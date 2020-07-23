String longestConsec(strarr, int k) {
  // your code here
  if (strarr.length == 0 || k > strarr.length || k <= 0) {
    return "";
  }

  String longestConsecutive = "";
  for (var i = 0; i < strarr.length - k + 1; i++) {
    String tempString = "";
    for (var j = 0; j < k; j++) {
      tempString += strarr[i+j]; 
    }
    if (tempString.length > longestConsecutive.length) {
      longestConsecutive = tempString;
    }
  }

  return longestConsecutive;
}

main(List<String> args) {
  print("l".compareTo("a"));
}
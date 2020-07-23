// Count the smiley faces!

int countSmileys(List<String> arr) {
  // your code here
  int validSmileys = 0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].length < 4) {
      if (arr[i][0] == ":" || arr[i][0] == ";") {
        if (arr[i][1] == "-" || arr[i][1] == "~") {
          if (arr[i][2] == ")" || arr[i][2] == "D") {
            validSmileys++;
          }
        }
        if (arr[i][1] == ")" || arr[i][1] == "D") {
          validSmileys++;
        }
      }
    }
  }

  return validSmileys; 
}
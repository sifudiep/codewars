int solution(String digits) {
  int largestSequence;
  for (var i = 0; i < digits.length - 4; i++) {
    String tempSequence = "";
    tempSequence += digits[i];
    for (var j = 1; j < 5; j++) {
      tempSequence += digits[i+j];
    }

    if (largestSequence == null || int.parse(tempSequence) > largestSequence) {
      largestSequence = int.parse(tempSequence);
    }
  }

  return largestSequence;
}

void main() {
  print("Hello");
  print(solution("123486730"));
}
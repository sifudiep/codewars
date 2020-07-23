int maxMultiple(int divisor, int bound) {
  for (int i = bound; i > 0; i--) {
    if (i % divisor == 0) {
      print("true! bound : $bound");
      return i;
    }
  }
}

main(List<String> args) {
  print("${10 % 4}");
  print(maxMultiple(4,15));
}
// Sliding Puzzle Verification

List<String> capitalize(String x) {
  // your code here
  String even = "";
  String odd = "";

  for (var i = 0; i < x.length; i++) {
    if (i % 2 == 0) {
      even += x[i].toUpperCase();
      odd += x[i];
    } else {
      even += x[i];
      odd += x[i].toUpperCase();
    }
  }

  List<String> returning = new List();
  returning.addAll([even, odd]);

  return returning;
}
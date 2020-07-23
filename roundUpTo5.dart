// Round up to the next multiple of 5

List<String> capitalize(String x) {
  String even = "";
  String uneven = "";

  for (var i = 0; i < x.length; i++) {
    if (i % 2 == 0) {
      even += x[i].toUpperCase();
      uneven += x[i];
    } else {
      even += x[i];
      uneven += x[i].toUpperCase();
    }
  }
  
  List<String> capitalized = new List();
  capitalized.addAll([even, uneven]);

  return capitalized;
}
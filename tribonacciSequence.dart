// Tribonacci Sequence

List<num> tribonacci(List<num> signature, int n) {
  // your code here
  if (signature.length == 0) {
    return [];
  }

  if (n < 4) {
    List<int> res = List();
    for (var i = 0; i < n; i++) {
      res.add(signature[i]);
    }
    return res;
  }

  while (signature.length != n) {
    signature.add((signature[signature.length-1] + signature[signature.length-2] + signature[signature.length-3]));
  }

  return signature;
}

main(List<String> args) {
  
}
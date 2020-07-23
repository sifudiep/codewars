int josephusSurvivor(int n, int k) {
  var circle = List<int>();
  for (var i = 1; i < n + 1; i++) {
    circle.add(i);
  }

  var counter = 1;
  var pointer = 0;
  while (circle.length != 1) {
    print("counter: $counter, pointer: $pointer");
    if (pointer == circle.length) {
      pointer = 0;
    }
    if (counter % k == 0 && counter != 0) {
      print("removing at ${circle[pointer]}, counter: $counter, k: $k");
      circle.removeAt(pointer);
      counter++;
    } else {
      counter++;
      pointer++;
    }
  }

  return circle[0];
}

main(List<String> args) {
  print( josephusSurvivor(100, 1));
}
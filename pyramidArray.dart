// Pyramid Array
List<List<int>> pyramid(int n) {
  // your code here
  List<List<int>> finalList = new List();

  for (var i = 1; i <= n; i++) {
    List<int> tempList = new List();
    for (var j = 0; j < i; j++) {
      tempList.add(1);
    }
    finalList.add(tempList);
  }

  return finalList;
}


main(List<String> args) {
  print(pyramid(2));
}
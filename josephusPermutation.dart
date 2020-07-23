List josephus(final List items, final int k) {
  if (k == 0) {
    return items.reversed;
  }
  List result = recursiveSolution(items, new List(), 0, k);
  return result;
}

List recursiveSolution(List aliveAtStart, List deadList, int counted, int everyKMan) {
  var counter = counted != null ? counted : 0; 
  List aliveAtEnd = new List();

  // adding the people to be killed to a list.
  for (var i = 0; i < aliveAtStart.length; i++) {
    counter++;
    if (counter == everyKMan) {
      print("counter : $counter, item : ${aliveAtStart[i]}, index: $i");
      deadList.add(aliveAtStart[i]);
      counter = 0;
    } else {
      aliveAtEnd.add(aliveAtStart[i]);
    }
  }


  if (aliveAtStart.length != 0) {
    return recursiveSolution(aliveAtEnd, deadList, counter, everyKMan);
  } else {
    print("return!");
    print("deadlist.length : ${deadList.length}");
    return deadList;
  }
}

main(List<String> args) {
  josephus([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2);
  print(recursiveSolution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], new List(), 0, 2).length);
}
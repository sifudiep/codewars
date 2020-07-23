int sumOfIntervals(List<List<int>> intervals) {
  // your code here
  var numbersInIntervals = List<int>();

  for (var i = 0; i < intervals.length; i++) {
    int tempLargestNum;
    int tempSmallestNum;
    
    if (intervals[i][1] > intervals[i][0]) {
      tempLargestNum = intervals[i][1];
      tempSmallestNum = intervals[i][0];
    } else {
      tempLargestNum = intervals[i][0];
      tempSmallestNum = intervals[i][1];
    }

    for (var j = 1; j < (tempLargestNum - tempSmallestNum + 1); j++) {
      if (numbersInIntervals.contains(tempSmallestNum + j) == false){
        numbersInIntervals.add(tempSmallestNum + j);
      }
    }
  }

  return numbersInIntervals.length;
}
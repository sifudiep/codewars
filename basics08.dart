// Basics 08: Find next higher number with same Bits (1's)
import 'dart:math' as math;


int nextHigher(int n) {
  var numberFormat = n+1;
  var byteList = recursiveNumberToByte(numberFormat, new List<int>());
  var nextNumber = 0;
  for (var i = 0; i < byteList.length; i++) {
    nextNumber += math.pow(10, byteList[i]);
  }

  return nextNumber;
}

List<int> recursiveNumberToByte(int number, List<int> numList) {
  for (var i = 0; true; i++) {
    if (number < math.pow(2, i+1)) {
      
      break;
    }
  }
  int remainder = number - math.pow(2, numList[numList.length-1]);
  if (remainder > 0) {
    return recursiveNumberToByte(remainder, numList);
  } else {
    return numList;
  }
}

main(List<String> args) {
  nextHigher(10);
}
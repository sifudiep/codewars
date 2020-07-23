import 'dart:math';

int binaryArrayToNumber(List<int> arr) {
  int num = 0;
  
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == 1) 
      num += pow(2, arr.length - i - 1);
  }
  
  return num;
}

main(List<String> args) {

}
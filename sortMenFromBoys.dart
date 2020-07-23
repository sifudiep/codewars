List<int> menFromBoys(arr) {
  // your code here
  List<int> unevenNumbers = new List<int>(); // boys
  List<int> evenNumbers = new List<int>(); // men
  List<int> finalSortedList = new List<int>();
  for (var i = 0; i < arr.length; i++) {
    bool isDuplicate = false;

    if (arr[i] % 2 == 0) {
      for (var num in evenNumbers) {  
        if (num == arr[i]) {
          isDuplicate = true;
          print("IS DUPLICATE! num : $num, i : ${arr[i]}");
          break;
        }
      }
      if (isDuplicate == false) {
        evenNumbers.add(arr[i]);
      }
    } else {
      for (var num in unevenNumbers) {  
        if (num == arr[i]) {
          isDuplicate = true;
          print("IS DUPLICATE! num : $num, i : ${arr[i]}");
          break;
        }
      }
      if (isDuplicate == false) {
        unevenNumbers.add(arr[i]);
      }
    }
  }
  
  evenNumbers.sort((a,b) => a.compareTo(b));
  unevenNumbers.sort((b,a) => a.compareTo(b));
  return finalSortedList..addAll(evenNumbers)..addAll(unevenNumbers);
}

main(List<String> args) {
  var test = menFromBoys([2, 15, 17, 15, 2, 10, 10, 17, 1, 1]);
  for (var num in test) {
    print(num);
  }
}
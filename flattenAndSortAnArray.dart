List<int> flattenAndSort(List<List<int>> nums) {
  // your code here
  List<int> newList = new List<int>();
  for (var i = 0; i < nums.length; i++) {
    for (var k = 0; k < nums[i].length; k++) {
      newList.add(nums[i][k]);
    }
  }
  newList.sort();
  return newList;
}
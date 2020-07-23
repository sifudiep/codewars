// Multiples of 3 or 5

int solution(int n) {
  // your code here
  int sum = 0;
  
  for (var i = 0; i < n; i++) {
    if (i % 3 == 0 && i % 5 == 0){
      sum += i;
      continue;
    }
    if (i % 3 == 0) {
      sum += i;
    }
    if (i % 5 == 0) {
      sum += i;
    }
  }
  return sum;
}
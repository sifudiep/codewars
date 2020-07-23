// Find The Parity Outlier
int findv1(List integers) {
  int even = 0;
  int uneven = 0;

  for (var i = 0; i < 3; i++) {
    if (integers[i] % 2 == 0){
      even++;
    } else {
      uneven++;
    }
  }


  bool isEven = even > uneven ? true : false;
  for (var i = 0; i < integers.length; i++) {
    if (isEven) {
      if (integers[i] % 2 != 0)
        return integers[i];
    } else {
      if (integers[i] % 2 == 0)
        return integers[i];
    }
  }
} 

int findv2(List integers) {
  

}

main(List<String> args) {
  print(findv2([99,77,331,717,89,22073,8,7,101]));
}
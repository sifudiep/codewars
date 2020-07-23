// Nut Farm 2

List<int> shake_tree(var tree) {
  //Harvest the nuts here!
  var emptyList = List<int>();
  for (var i = 0; i < tree.length; i++) {
      // print("---------$i----------");
    for (var j = 0; j < tree[i].length; j++) {
      if (emptyList.length <= j) {
        emptyList.add(0);
      }
      
      if (tree[i][j] == "o") {
        emptyList[j]++;
      } else if (tree[i][j] == "/") {
        if (tree[i][j-1] == "\\") {
            emptyList[j] = 0;
            emptyList[j-1] = 0;
        }
      
        if (emptyList[j] > 0) {
          emptyList[j-1] += emptyList[j];
          emptyList[j] = 0;
          j = 0;
        }
      } else if (tree[i][j] == "\\"){
        if (tree[i][j+1] == "/") {
          emptyList[j] = 0;
          emptyList[j+1] = 0;
        }

        if (emptyList[j] > 0) {
          emptyList[j+1] += emptyList[j];
          emptyList[j] = 0;
        }
      }
      // print("j: ${j} ///  emptyList[j]: ${emptyList[j]} ///  char : ${tree[i][j]}");
    } 
  }

  return emptyList;
}

// 22 exp 23, 36,
// 49 act 28, 62,


main(List<String> args) {
var tree = [" o o  oo  ",
                " \\\\\\   \\\\ ",
                "  o \\o    ",
                "  \\\\  \\   ",
                "    ||    ",
                "    ||    ",
                "    ||    "];
  var returnedList = shake_tree(tree);
  String finalReturend = "";
  for (var i = 0; i < returnedList.length; i++) {
    finalReturend += "${returnedList[i]},";
  }
  print(finalReturend);
}


// ....oooooo.o.
// ...o/./.o\.\.
// .\/o.\./.....
// ...o\o\/\.\o.
// ./o\\...oo/o.
// .\\\oo.\\....
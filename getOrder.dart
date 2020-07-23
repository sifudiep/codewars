// New Cashier Does Not Know About Space or Shift

String getOrder(String input) {
  // your code here
  List<String> menuItems = new List<String>();
  String output = "";
  menuItems.addAll({"burger", "fries", "chicken", "pizza", "sandwich", "onionrings", "milkshake", "coke"});

  List<String> burgers = new List();
  List<String> fries = new List();
  List<String> chicken = new List();
  List<String> pizza = new List();
  List<String> sandwich = new List();
  List<String> onionrings = new List();
  List<String> milkshake = new List();
  List<String> coke = new List();

  String currentWord = "";
  for (var i = 0; i < input.length; i++) {
    currentWord += input[i];
    if (menuItems.contains(currentWord)) {
      String tempWord = "";
      tempWord += currentWord[0].toUpperCase();
      for (var i = 1; i < currentWord.length; i++) {
        tempWord += currentWord[i];
      }

      switch (currentWord) {
        case "burger": burgers.add(tempWord); break;
        case "fries": fries.add(tempWord); break;
        case "chicken": chicken.add(tempWord); break;
        case "pizza": pizza.add(tempWord); break;
        case "sandwich": sandwich.add(tempWord); break;
        case "onionrings": onionrings.add(tempWord); break;
        case "milkshake": milkshake.add(tempWord); break;
        case "coke": coke.add(tempWord); break;
      }

      currentWord = "";
    }
  }
  output += listToString(burgers, output);
  output += listToString(fries, output);
  output += listToString(chicken, output);
  output += listToString(pizza, output);
  output += listToString(sandwich, output);
  output += listToString(onionrings, output);
  output += listToString(milkshake, output);
  output += listToString(coke, output);
  

  return output.trimRight(); 
}

String listToString(List<String> list, String getOrderOutput) {
  String output = "";
  
  for (var item in list) {
    output += item;
    output += " ";
  }
  return output;
}

main(List<String> args) {
  getOrder("pizzachickenfriesburgercokemilkshakefriessandwich");
}
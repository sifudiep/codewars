String meeting(String s) {
  var fullNames = s.toUpperCase().split(";");
  fullNames.sort((a,b) {
    if (a.split(":")[1] == b.split(":")[1]) {
      return a.split(":")[0].compareTo(b.split(":")[0]);
    } 
    return a.split(":")[1].compareTo(b.split(":")[1]);
  });


  String returnedString = "";
  for (var name in fullNames) {
    var fullName = name.split(":");
    var firstName = fullName[0];
    var lastName = fullName[1];

    returnedString += "($lastName, $firstName)";
  }
  return returnedString;
}



main(List<String> args) {
  print(meeting("John:Gates;Michael:Wahl;Megan:Bell;Paul:Dorries;James:Dorny;Lewis:Steve;Alex:Meta;Elizabeth:Russel;Anna:Korn;Ann:Kern;Amber:Cornwell"));
}
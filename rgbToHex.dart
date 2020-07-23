// RGB To Hex Conversion

String rgb(int r, int g, int b)
{
  int rAmountOf1s = r % 16;
  var rAmountOf16s = (r - rAmountOf1s) / 16;

  int gAmountOf1s = g % 16;
  var gAmountOf16s = (g - gAmountOf1s) / 16;

  int bAmountOf1s = b % 16;
  var bAmountOf16s = (b - bAmountOf1s) / 16;

  String red = "${numberToLetter(rAmountOf16s.toInt())}${numberToLetter(rAmountOf1s)}";
  String green = "${numberToLetter(gAmountOf16s.toInt())}${numberToLetter(gAmountOf1s)}";
  String blue = "${numberToLetter(bAmountOf16s.toInt())}${numberToLetter(bAmountOf1s)}";

  if (r > 255) 
    red = "FF";
  if (g > 255)
    green = "FF";
  if (b > 255)
    blue = "FF";

  if (r < 0) {
    red = "00";
  }
  if (g < 0) {
    green = "00";
  } 
  if (b < 0) {
    blue = "00";
  }

  return '$red$green$blue'; // replace with your solution
}

String numberToLetter(int number) {
  if (number >= 0 && number <= 9) {
    return number.toString();
  } else {
    switch (number) {
      case 10:
        return "A";
      case 11:
        return "B";
      case 12:
        return "C";
      case 13: 
        return "D";
      case 14:
        return "E";
      case 15:
        return "F";
    }
  }
}

main(List<String> args) {
  print(rgb(148, 0, 211));
}
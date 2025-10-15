void main() {
  String stringNumber1 = "100";
  String dateString = "2024-01-01";
  String valueBool = "TRUE";
  bool newValue = bool.parse(valueBool.toLowerCase());
  int number = int.parse(stringNumber1);
  double number2 = double.parse(stringNumber1);

  String intNumber = number.toString();

  print("hasil parsing string ke integer : $number");
  print(number.runtimeType);

  print("hasil parsing string ke double : $number2");
  print(number2.runtimeType);

  print("hasil parsing string ke boolean : $newValue");
  print(newValue.runtimeType);

  DateTime date = DateTime.parse(dateString);
  print("hasil parsing string ke DateTime : $date");

  print("hasil parsing integer ke string : $intNumber");
  print(intNumber.runtimeType);
}
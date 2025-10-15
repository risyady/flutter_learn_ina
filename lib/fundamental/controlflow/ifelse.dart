void main() {
  int nilai = 40;

  if (nilai > 75) {
    print("lulus");
  } else {
    print("tidak lulus");
  }

  var value = 70;

  if (value >= 90 && value <= 100) {
    print("Grade A+");
  } else if (value >= 80) {
    print("Grade A");
  } else if (value >= 70) {
    print("Grade B");
  } else if (value >= 60) {
    print("Grade C");
  } else if (value >= 50) {
    print("Grade D");
  } else if (value >= 30) {
    print("Grade E");
  } else if (value >= 0) {
    print("You have failed");
  } else {
    print("invalid value");
  }
}
import 'dart:io';

void main() {
  int count = 1;
  while (count <= 10) {
    print("iterasi versi while ke-$count");
    count++;
  }

  int count2 = 1;
  do {
    print("iterasi versi do while ke-$count2");
    count2++;
  } while (count2 <= 5);

  String? input = "";
  while (input != "selesai") {
    stdout.write("Masukkan kata (selesai untk menghentikan program) : ");
    input = stdin.readLineSync();
    print("Anda menginputkan: $input");
  }
}
void main() {
  for (var i = 1; i <= 10; i++) {
    print("iterasi versi for ke-$i");
  }

  List<int> numbers = [2, 4, 6, 8, 10];
  for (var elemen in numbers) {
    print("iterasi versi for in ke-$elemen");
  }
}
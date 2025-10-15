String s1 = "hello world";
String s2 = 'hello world';
String s3 = 'hello Sa\'id';
String s4 = "hello Sa'id";
String s5 = "hello perkenalkan saya "
"Ibrahim Risyad";
String s6 = "Ibrahim R";

void main() {
  print("tampilkan pesan : $s5");
  print("tampilkan pesan : " + s5);
  print("jumlah karakter : ${s6.length}");
}
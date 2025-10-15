class Person {
  String? name;
  int? age;

  //setter
  set setName(String? value) {
    if (value!.isNotEmpty) {
      name = value;
    } else {
      print("name cannot be empty");
    }
  }

  //getter
  String? get getName => name;

  set setUmur(int? value) {
    if (value! < 17) {
      print("Umur harus lebih dari 17");
    } else {
      age = value;
    }
  }

  int? get getUmur {
    return age;
  }
}

void main() {
  var person1 = Person();
  person1.setName = "Ibrahim Risyad";
  person1.setUmur = 21;

  print("nama: ${person1.getName}");
  print("umur: ${person1.getUmur}");
}
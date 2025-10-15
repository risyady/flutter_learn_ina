class Person {
  String? name;
  int? age;

  //default constructor
  Person(this.name, this.age);

  //Person.fromName(this.name) : age = 25;
  Person.fromName(this.name, {this.age = 25});

  Person.fromNameandAge(this.name, this.age);

  void displayInfo() {
    print("nama: $name, usia: $age");
  }
}

void main() {
  var person1 = Person("Ibrahim", 21);
  person1.displayInfo();

  var person2 = Person.fromName("Sa'id");
  person2.displayInfo();

  var person3 = Person.fromNameandAge("Risyad", 22);
  person3.displayInfo();
}
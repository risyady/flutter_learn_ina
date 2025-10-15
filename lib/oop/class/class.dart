class Person {
  //field || atribut
  String? name;
  int? age;

  //constructor
  Person({this.name = "Ibrahim Risyad", this.age = 21});

  //method
  void sayHello() {
    print("Hello, my name is $name, I'm $age years old");
  }
}

void main() {
  var person1 = Person(age: 21, name: "Ibrahim Risyad");
  person1.sayHello();

  person1.name = "Sa'id";
  person1.age = 22;
  person1.sayHello();

  print("nama anda: ${person1.name}");
  print("usia anda: ${person1.age}");
}
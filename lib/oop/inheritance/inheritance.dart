// definisikan parent

class Animal {
  String? name;

  Animal(this.name);

  void eat() {
    print("$name is eating");
  }

  void makeSound() {
    print("$name is makes a sound");
  } 
}

class Cat extends Animal {
  Cat(super.name);

  @override
  void eat() {
    print("cat is makan makan");
    //super.eat();
  }

  void sleep() {
    print("cat is sleep");
  }
}

class Kitten extends Cat {
  Kitten(super.name);

  @override
  void makeSound() {
    print("kucing $name is miao miao");
    //super.makeSound();
  }
}

void main() {
  var cat = Cat("Mujaer");
  cat.eat();
  cat.makeSound();
  cat.sleep();

  var kitten = Kitten("AnakKecil");
  print("kucing ${kitten.name}");
  kitten.makeSound();
}
class Animal {}

class Cat extends Animal {}

class BengalCat extends Cat {}

// GOOD
class Human {
  void feed(Animal animal) {}
}

// BAD
class Human2 {
  void feed(BengalCat bengalCat) {}
}

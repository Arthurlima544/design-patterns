import 'package:design_patterns/liskov_substitution_principle/liskov_substitution_principle.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('liskov substitution principle ...', () async {
    Human human = Human();
    Human2 human2 = Human2();
    Animal animal = Animal();
    Cat cat = Cat();
    BengalCat bengalCat = BengalCat();
    // GOOD
    human.feed(animal);
    human.feed(cat);
    human.feed(bengalCat);
    // BAD
    human2.feed(bengalCat);
    // human2.feed(cat); // Cannot feed the poor cat 😔
  });
}

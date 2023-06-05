import 'package:design_patterns/inheritance/inheritance_ex.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should check if cat has multiples interface implementation', () async {
    Cat cat = Cat();
    // OxtgenBreather caracteristics
    cat.breathe();
    // Ainmal caracteristics
    cat.eat();
    cat.makeSound();
    // FourLegged caracteristics
    cat.run(Reason.toHunt);
  });
}

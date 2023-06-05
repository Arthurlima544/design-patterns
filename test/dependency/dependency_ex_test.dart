import 'package:design_patterns/dependency/dependency_ex.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should emit a error on debug console by teaching using a invalid page',
      () async {
    Professor professor = Professor();
    Material material = Material(lastPage: 100, title: "Dinossaur Book FSO");
    Course course = Course(material);

    professor.teach(course, 101);
  });
}

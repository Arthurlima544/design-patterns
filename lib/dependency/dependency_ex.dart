import 'package:design_patterns/logger.dart';

/// A dependência é o mais básico e o mais fraco tipo de relações
/// entre classes. Existe uma dependência entre duas classes se
/// algumas mudanças na definição de uma das classes pode resultar
/// em modificações em outra classe.
///
/// Caso seja alterado alguma das propriedades do material pedirá
///  mudanças na classe Professor

class Professor {
  void teach(Course course, int goToPage) {
    try {
      _flipPages(material: course.material, goToPage: goToPage);
    } on PageNotFoundException catch (e) {
      logger.e("You can try go back ${e.goBackNPages} pages", "Page Not Found");
    }
  }

  void _flipPages({required Material material, required int goToPage}) {
    if (goToPage > material.lastPage) {
      throw PageNotFoundException(goToPage - material.lastPage);
    }
  }
}

class Course {
  final Material material;

  Course(this.material);
}

class Material {
  final int lastPage;
  final String title;

  Material({required this.lastPage, required this.title});
}

class PageNotFoundException implements Exception {
  final int goBackNPages;

  PageNotFoundException(this.goBackNPages);
}

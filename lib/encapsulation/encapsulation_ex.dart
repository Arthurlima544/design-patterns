/// O Encapsulamento é a habilidade de um objeto de esconder
/// parte de seu estado e comportamentos de outros objetos,
/// expondo apenas uma interface limitada para o resto do programa.
class Airport {
  ///Somente permite Transpotes legais juridicamente ;)
  bool accept({required FlyingTransport flyingTransport}) {
    if (flyingTransport is DomesticatedGryphon) {
      return false;
    }
    return true;
  }
}

/// Interface -> Contratos de uma classe
abstract class FlyingTransport {
  void fly(String origin, String destination, List<Passeger> passagers);
}

class Helicopter implements FlyingTransport {
  @override
  void fly(String origin, String destination, List<Passeger> passagers) {
    throw UnimplementedError();
  }
}

class Airplane implements FlyingTransport {
  @override
  void fly(String origin, String destination, List<Passeger> passagers) {
    throw UnimplementedError();
  }
}

class DomesticatedGryphon implements FlyingTransport {
  @override
  void fly(String origin, String destination, List<Passeger> passagers) {
    throw UnimplementedError();
  }
}

class Passeger {
  final int id;
  final String name;
  final int seat;

  Passeger(
    this.id,
    this.name,
    this.seat,
  );
}

//! Olhe os testes para a implementação
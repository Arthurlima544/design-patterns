import 'package:design_patterns/encapsulation/encapsulation_ex.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should try diferent transports and accept legal ones only', () async {
    //Arrange
    Airport airport = Airport();
    Helicopter helicopter = Helicopter();
    Airplane airplane = Airplane();
    DomesticatedGryphon domesticatedGryphon = DomesticatedGryphon();

    ///Act
    final airplaneResult = airport.accept(flyingTransport: airplane);
    final helicopterResult = airport.accept(flyingTransport: helicopter);
    final domesticatedGryphonResult =
        airport.accept(flyingTransport: domesticatedGryphon);

    //Assert
    expect(airplaneResult, true);
    expect(helicopterResult, true);
    expect(domesticatedGryphonResult, false);
  });
}

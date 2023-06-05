/// A Abstração é um modelo de um objeto ou fenômeno do mundo real,
/// limitado a um contexto específico, que representa todos
/// os detalhes relevantes para este contexto com grande
/// precisão e omite o resto.

/// Ideia de abstração: "Comprar um Avião"
class Airplane {
  final double speed;
  final double altitude;
  final double rollAngle;
  final double pitchAngle;
  final double yawAngle;

  Airplane(
    this.speed,
    this.altitude,
    this.rollAngle,
    this.pitchAngle,
    this.yawAngle,
  );

  void fly() {
    throw UnimplementedError();
  }
}

/// Mesmo objeto porém com idéia de abstração diferente
/// nesse caso queremos simplesmente "comprar uma passagem de um avião"
class Airplane2 {
  final int seats;

  Airplane2(this.seats);

  void reservSeat(int seatNumber) {
    throw UnimplementedError();
  }
}

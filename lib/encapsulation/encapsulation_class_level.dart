import 'package:design_patterns/blocked_classes.dart';

class Order {
  final List<Product> products;
  final Country country;

  Order(this.products, this.country);

  double getOrderTotal(Order order) {
    double total = 0;
    for (Product product in order.products) {
      total += product.price * product.amount;
    }
    total += total * TaxCalculator.getTaxRate(order.country);
    return total;
  }
}

//! Note que um pedido precisa saber calcular o preço total dos itens,
//! porém não precisa saber como Taxas são calculadas.

class TaxCalculator {
  static double getTaxRate(Country country) {
    switch (country) {
      case Country.brazil:
        return 0.07;
      case Country.usa:
        return 0.02;
      case Country.russia:
        return 0.09;
      case Country.portugal:
        return 0.06;
      default:
        throw Exception();
    }
  }
}

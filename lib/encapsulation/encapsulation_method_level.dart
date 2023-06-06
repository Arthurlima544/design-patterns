enum Country { brazil, usa, russia, portugal }

class Product {
  final double price;
  final int amount;

  Product({
    required this.price,
    this.amount = 1,
  });
}

class Order {
  final List<Product> products;
  final Country country;

  Order(this.products, this.country);
}

/// Responsável por obter o preço total dos pedidos feitos em um e-commerce.
double getOrderTotal(Order order) {
  double total = 0;
  for (Product product in order.products) {
    total += product.price * product.amount;
  }
  switch (order.country) {
    case Country.brazil:
      total += total * 0.07;
      break;
    case Country.usa:
      total += total * 0.02;
      break;
    case Country.russia:
      total += total * 0.09;
      break;
    case Country.portugal:
      total += total * 0.06;
      break;
    default:
      throw Exception();
  }
  return total;
}

//! Note que caso ocorra alguma mudança na taxação de impostos, teremos que mudar
//! a classe getOrderTotal, que não precisa saber como os impostos são calculados,
//! Assim podemos Criar uma nova função para obter a taxa de impostos:

double getTaxRate(Country country) {
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

double encapsulatedGetOrderTotal(Order order) {
  double total = 0;
  for (Product product in order.products) {
    total += product.price * product.amount;
  }
  total += total * getTaxRate(order.country);
  return total;
}

//! Assim  reduzimos a quantidade de linhas de código da função getOrderTotal, 
//! Encapsulamos o "como" a taxa de imposto é calculada , reduzimos o tempo na
//! manutenção de ambas as classes, se o eccomerce passar a vender para outros 
//! Paises somente mais um campo nas taxas vai resolver.. e consequentemente o
//! reduzimos o efeito causado pelas mudanças.
//! e a mais importante: Atribuimos Uma reposabilidade única para ambas as classes
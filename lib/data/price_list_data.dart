class Price {
  int? priceID;
  int? priceCount;

  Price({required this.priceID, required this.priceCount});
  Price.nullPrice() {
    priceID = null;
    priceCount = null;
  }
}

class PriceUtils {
  static List<Price> price = [
  ];

  static List<Price> getPrice() {
    return PriceUtils.price;
  }

  void addPrice(Price newPrice) {
    price.add(newPrice);
  }

  void removePrice(int position) {
    price.removeAt(position);
  }
}

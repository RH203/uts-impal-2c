class Produk {
  final Map<int, double> hargaProduk = {
    1: 10000.0,
    2: 20000.0,
    3: 15000.0,
  };

  double getPrice(int id) {
    return hargaProduk[id] ?? 0.0;
  }
}

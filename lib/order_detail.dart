import 'package:tugas_2c_uts/produk.dart';

class OrderDetail {
  int? id;
  int quantity = 0;
  double price = 0.0;

  void setId(int id) {
    this.id = id;
  }

  void setQuantity(int id, int qty, Produk produk) {
    this.id = id;
    this.quantity = qty;
    this.price = produk.getPrice(id);
  }

  double subTotal() {
    return quantity * price;
  }
}

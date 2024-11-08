import 'package:tugas_2c_uts/order_detail.dart';

class Order {
  List<OrderDetail> orderDetails = [];

  void addOrderDetail(OrderDetail orderDetail) {
    orderDetails.add(orderDetail);
  }

  double calculateTotal() {
    return orderDetails.fold(0.0, (total, detail) => total + detail.subTotal());
  }

  String cetakStruk() {
    StringBuffer struk = StringBuffer();
    struk.writeln("=== Struk Pembelian ===");
    for (var detail in orderDetails) {
      struk.writeln(
          "ID Produk: ${detail.id}, Qty: ${detail.quantity}, Subtotal: ${detail.subTotal()}");
    }
    struk.writeln("Total: ${calculateTotal()}");
    return struk.toString();
  }
}

import 'package:tugas_2c_uts/order.dart';
import 'package:tugas_2c_uts/order_detail.dart';
import 'package:tugas_2c_uts/printer.dart';
import 'package:tugas_2c_uts/produk.dart';

void main() {
  var kasir = Kasir();
  kasir.prosesTransaksi();
}

class Kasir {
  final Produk produk = Produk();
  final Order order = Order();
  final Printer printer = Printer();

  void prosesTransaksi() {
    var produkIds = [1, 2, 3]; // contoh ID produk
    var kuantitas = [3, 2, 3]; // kuantitas dari setiap produk

    for (int i = 0; i < produkIds.length; i++) {
      OrderDetail detail = OrderDetail();
      detail.setId(produkIds[i]);
      detail.setQuantity(produkIds[i], kuantitas[i], produk);
      order.addOrderDetail(detail);
    }

    // Menghitung total dan mencetak struk
    print(order.cetakStruk());
    printer.loadData(order.cetakStruk());
  }
}

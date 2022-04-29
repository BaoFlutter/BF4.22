import 'xe.dart';

class XeTai extends Xe{

    // Tất cả những gì (biến , hàm) public của cha , đều là của con 
  // Khi mà lớp cha có hàm khởi tạo không phải mặc định thì lớp con cũng phải khởi tạo cho lớp cha 
  XeTai({required String? brand, required int? productionYear}) : super(brand: brand, productionYear: productionYear);

  @override
  void chuyenCho() {
    // TODO: implement chuyenCho
    print("Xe tải chở VLXD");
  }

  getAge(){
    super.chuyenCho();
    return DateTime.now().year - super.productionYear!;
  }




}
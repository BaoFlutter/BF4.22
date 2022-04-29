import 'package:oop_dart/hinh/hinh_vuong.dart';
import 'package:oop_dart/oop_dart.dart' as oop_dart;
import 'package:oop_dart/xe/xe_tai.dart';
import 'user.dart';

void main(List<String> arguments) {
  User hoa = User(userName: "Pham Hoa", birthYear: 1998, address: "Hà Nội"); // tạo ra 1 đối tượng , instance 
  print (hoa.userName);
  hoa.address = "TPHCM ";
  hoa.setPhoneNumber(phoneNumber: "0349823434");
  String phoneNumber = hoa.getPhoneNumber();
  hoa.userName;
  


  User mai = User(userName: "Tran Mai", birthYear: 1999);
  User lan = User(userName: "Tran Lan", birthYear: 1990);

  List<User> userList = [];
  userList.add(hoa);
  userList.add(lan);
  userList.add(mai);

  User oldestUser = findOldestUser(userList: userList);
  print("Người có tuổi lớn nhất là: ${oldestUser.userName}, với số tuổi ${oldestUser.getAge()}");

  // Đặc tính OOP 
  /*
   XeTai huynDai34 = XeTai();
   huynDai34.brand = "HuynDai";
   huynDai34.productionYear = 2009;
   huynDai34.chuyenCho();
   */

   XeTai huynDai34 = XeTai(brand:"HuynDai", productionYear: 2009);
   //huynDai34.chuyenCho();
   print("Tuổi của xe: ${huynDai34.getAge()}");

   HinhVuong hv = HinhVuong(canh: 30);
   print("Hinh vuong có canh ${hv.chieuDai} \n , có chu vi: ${hv.tinhChuVi()} , \n có diện tích: ${hv.tinhDienTich()}" );
 
}

User findOldestUser({ required List<User> userList}){
  int maxAge = 0; 
  User? userResult;
  for(User user in userList)
  {
    int age = user.getAge();
    if(age >= maxAge ){
      maxAge = age; 
      userResult = user; 
    }
  }
  return userResult!; 

}

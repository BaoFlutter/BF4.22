class User {
// các thuộc tính  
String? userName; 
int? birthYear; 
String? address; 
String? _phoneNumber;  // private : Không được sử dụng bên ngoài class 
// 1. Tất cả các thuộc tính của class khi dùng phải thêm : this.
static double PI = 3.14;
int? _money ; 

//  Các phương thức
// Mặc định 
//User(); // hàm khởi tạo  mặc đinh
// Trong 1  class chỉ có duy nhất 1 hàm khởi tạo
// không nên khởi tạo biến private trong hàm khởi tạo

User({ this.userName, this.address, this.birthYear});

int getAge(){
 return DateTime.now().year - this.birthYear!;
}
// hàm getter 
String getPhoneNumber(){
  return this._phoneNumber!;
}
// hàm getter kiểu mới
String get phoneNumber => this._phoneNumber!;

 // hàm setter kiểu mới
set setPhoneNumber2(String phoneNumber) {
 this._phoneNumber = phoneNumber ;
}

// hàm setter 
void setPhoneNumber({required String phoneNumber}){
  this._phoneNumber = phoneNumber;
}


int _showMoney(){
  return 2000000000;
}



}
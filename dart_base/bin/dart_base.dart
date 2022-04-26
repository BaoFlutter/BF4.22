import 'package:dart_base/dart_base.dart' as dart_base;

bool checked = false ; 
void main(List<String> arguments) {
// Kiểu dữ liệu : Static , Dynamic 
// 1. Static : int , double, bool, String, 
int userAge = 30;  // camel Style 
bool isAppLogined = true; 
// dynamic bị xoá đi 
const  PI = 3.1442434;
final int maxAge = userAge;  
userAge = 25; 
//PI = 3.188; - Error 
// maxAge = 45; - Error
// 2. Dynamic : var, dynamic 
var name  = "Hello";
name = "Hai";
// name = 8; - Error 
var age = 50;

dynamic secondNumber = 78.5;
secondNumber = "Hihi";

Map map = {
  "name": "Báo Flutter",
  1 : 31 ,
  "birth_year":1991
};

int sum = tinhTongHaiSo(userAge, age);
print("Tổng 2 số là : $sum");
print("Tổng 2 số $userAge và $age là : ${tinhTongHaiSoNew(userAge, age)}");

int hieu = tinhHieuHaiSo(soBiTru: 100, soTru: 88);

// Null Safety 

String? versionCode ; // ngôn ngữ khác, Dart Version (< 2.12) versionCode = null;
print(versionCode);
//String updatedVersion = "000" + versionCode!;
String updatedVersion = "000" + (versionCode??"1aa")!;
print(updatedVersion);

int thirdNumber  = 5; 
thirdNumber += 9; // thirdNumber = thirdNumber + 9; // 14 
thirdNumber ++ ; // thirdNumber = thirdNumber  +  1;  // 15
thirdNumber -- ; // thirdNumber = thirdNumber  -  1; // 14

if(thirdNumber >=  userAge ) print("$thirdNumber lớn hơn $userAge ");
else print("$userAge lớn hơn $thirdNumber");

// ||; && 
// || <=> + ; true : 1; false : 0  => Chỉ bằng 0 ( false ) khi cả 2 đều là false 
if((5> 10) ||(4>8)) print("Đúng");
else print("Sai");

// && <=> * => Chỉ bằng 1 ( true) Khi cả 2 là true ;
if((5 < 10) && (4< 8)) print("Đúng");
else print("Sai");

// List : là 1 tập hợp các phần tử có cùng kiểu dữ liệu 

List<int> numberList1 = [];
List<int> numberList2 =     [5,8,6,12,34,55,100];
numberList2.add(123);
if(! numberList2.isEmpty ) print("List không rỗng");

 
//Index chỉ số của pt List:  0 1 2 3  4   5   6  
// Độ dài :      (length)                7  
// numberList2[0] = 5;  numberList2[1] = 8; // numberList2[i ] = ...;  
printEvenInNumberList(numberList: numberList2);

List<dynamic> numberList3 = [true, "aa", 1, 9.5 ];
List numberList4 = [true, "aa", 1, 9.5 ];

// Map Là tập hợp các cặp  : Key - Value 

Map<String , dynamic> informationMap = { // JSON 
  "name": "Báo Flutter", // cặp 1 
  "age" : 30, // cặp 2 
  //.........

};

String userName = informationMap['name'];
print(userName);



}
// 1. Tạo hàm : tạo riêng , không nằm trong bất cứ hàm nào 
// Nên sử dụng biến cục bộ thay vì biến toàn cục 
int tinhTongHaiSo(int a , int b ){
  return a+ b;
}
// rút gọn { return smthing; } ; => smthing ;
int tinhTongHaiSoNew (int a , int b ) => a + b;

int tinhHieuHaiSo( {  int? soBiTru, int? soTru } ) => soBiTru! - soTru! ; 

void getUserInformation(){
  print("mmdfmd");
  return;
}
// 2. Sử dụng hàm  : Có thể sử dụng nhiều và đặt trong các hàm khác 


bool checkOdd({required int inputNumber}){
  if(inputNumber%2 != 0)  return true; 
  return false;
}
// dynamic có thể xoá đi nếu là kiểu dữ liệu truyền vào của hàm hoặc kiểu dữ liệu đầu ra của hàm
 checkEven({required  number })
{
  if(number%2 == 0) return true; 
  return false;
}

bool kiemTraLe({ required int number}){
  bool isOdd = false;
  switch(number%2){
    case 0:
    isOdd= false; 
    break; 

    case 1:
    isOdd = true; 
    break; 

    default:
    print("Không hợp lệ");
    break;

  }
  return isOdd;


}

void printEvenInNumberList({ required List<int> numberList})
{
  /*
  // for ... in : Check theo phần tử 
  for(int number in numberList)
  {
    if(number%2 == 0 ) print("$number là số chẵn");

  }
  */
  /*
  // for : check theo index - chỉ số
  for(int i = 0 ; i< numberList.length; i++)
  {
    if(numberList[i]%2==0 ) print("${numberList[i]} là số chẵn");
  }
  */
  // While 
  /*
  int index = 0;
  while(index< numberList.length)
  {
    if(numberList[index] % 2 == 0) print("${numberList[index]} là số chẵn");
    index ++ ;
  }
  */

  // do ...  While 
 
  int index = 0;
 do
  {
    if(numberList[index] % 2 == 0) print("${numberList[index]} là số chẵn");
    index ++ ;
  }
   while(index< numberList.length);
 



}



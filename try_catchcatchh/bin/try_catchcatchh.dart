import 'package:try_catchcatchh/try_catchcatchh.dart' as try_catchcatchh;

void main(List<String> arguments) {
  var input = "flutter";
  /*
  // 1. Chương trình vẫn chạy tiếp và không dừng đột ngột
  //2. Biết chính sác ngoại lệ đó là gì 
  try {
    int number = int.parse(input);
  }
  catch (e){
    print(e.toString());
  }
  */

/*
  try {
    int number = int.parse(input);
  }
  on FormatException{
     print("Bạn chỉ được phép nhập số");
  }
  catch (e){
    print(e.toString());
  }
  */
  /*
  try {
    int number = int.parse(input);
  }
   catch (e){
    print(e.toString());
  }
 
  finally{
    print("Khối lệnh phải được thực thi");
  }
  */

  try{
    danhGiaTuoi(age: -6);
  }
  catch(e)
  {
    print(e.toString());
  }
  print("Chương trình kết thúc");

}

 void  danhGiaTuoi({ required int age}){
    if(age<=0 ) throw Exception("AgeException - Tuổi nhập vào không hợp lệ");
    if(age < 45 ) print ("Bạn vẫn trẻ");
    else print("Bạn đã có tuổi"); 
}

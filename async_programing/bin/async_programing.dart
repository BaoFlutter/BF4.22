import 'package:async_programing/async_programing.dart' as async_programing;

void main(List<String> arguments) async {
  print("Chương trình bắt đầu");
  // Đổi 
  // Future => int ( static) : đặt await - async đằng trước
  
  Future<int> futureNumber =  makeLateNumber();
  //1. await - async 
  
  //int number = await futureNumber;
  // print(number);

  //2. then 
  futureNumber.then((number){
    print(number);
  });

  print("Chương trình kết thúc");

  /// Stream 
 // Stream<int> numberStream = makeNumberStream();
 Stream<int> numberStream = makeSecondStream(maxNumber: 10);
  readStream2(numberStream:numberStream);
  
}

Future<int> makeLateNumber(){
  return Future.delayed(Duration(seconds: 2), (){
    return 5;
  });
}

/// Stream  : là tập hợp của rất nhiều dữ liệu bất đồng bộ 
/// 
// 1. tạo ra Stream 
// Cách 1 : 
 Stream<int> makeNumberStream (){
  return Stream<int>.periodic(Duration(seconds: 2), makeNumberUp);
}
// Cách thứ 2: 
Stream<int> makeSecondStream({required int maxNumber})async* {
  for(int i = 1; i<= maxNumber ; i++)
  {
    yield i;
  }
}
// 2. Lấy dữ liệu stream 
// 2.1 Read Stream với listen 
void readStream1({ required Stream<int> numberStream})
{
   numberStream.listen((number) {
     print(number);
    });
}
// 2.2 Read Stream Await For 
void readStream2({required Stream<int> numberStream}) async 
{
  await for(int number in numberStream )
  {
    print("Số lấy từ Stream: $number");
  }
}


int makeNumberUp(int value)=> value +1 ;

import 'package:reactive_programingree/reactive_programingree.dart' as reactive_programingree;
import 'package:rxdart/rxdart.dart';

void main(List<String> arguments) {
  //demoBehaviorSubject();
  //demoPublishSubject();
  demoReplaySubject();
    
}

// BehaviorSubject : Lấy tất cả các dữ liệu thêm vào sau thời điểm lắng nghe 
// và giá trị thêm vào gần nhất trước đó
demoBehaviorSubject(){
// Tạo 1 Subject ( tạo 1 Stream )
BehaviorSubject<int> subject = BehaviorSubject<int>();
subject.listen((number) {
  print("Lấy dữ liệu lần 1: $number");
 });
 subject.add(100);
 subject.add(101);
 subject.listen((number) {
  print("Lấy dữ liệu lần 2: $number");
 });
 subject.add(200);
 subject.add(201);
}

// PublishSubject : Lấy tất cả các dữ liệu thêm vào sau thời điểm lắng nghe thôi
demoPublishSubject(){
// Tạo 1 Subject ( tạo 1 Stream )
PublishSubject<int> subject = PublishSubject<int>();
subject.listen((number) {
  print("Lấy dữ liệu lần 1: $number");
 });
 subject.add(100);
 subject.add(101);
 subject.listen((number) {
  print("Lấy dữ liệu lần 2: $number");
 });
 subject.add(200);
 subject.add(201);
}

// ReplaySubject : Lấy tất cả các dữ liệu có trong Stream
demoReplaySubject(){
// Tạo 1 Subject ( tạo 1 Stream )
ReplaySubject<int> subject = ReplaySubject<int>();
subject.listen((number) {
  print("Lấy dữ liệu lần 1: $number");
 });
 subject.add(100);
 subject.add(101);
 subject.listen((number) {
  print("Lấy dữ liệu lần 2: $number");
 });
 subject.add(200);
 subject.add(201);
}

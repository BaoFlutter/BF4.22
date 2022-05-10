import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Tạo Widget
// 1. Widget dùng sẵn từ Flutter SDK hoặc cộng đồng trên Pub.dev
// 2. Widget được tạo bởi class
// 3. Widget được bởi hàm

// Tạo Widget bằng class : StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

// Tạo Widget bằng class: StatefulWidget
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Màn hình chính"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            children: [
              Text("Tôi là một lập trình viên Flutter"),
              ElevatedButton(
                  onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: const Text('AlertDialog description'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
                  child: Text("Press here")),
              _boxWidget(),

            ],
          )
        ),
      ),
    );
  }

  Widget _boxWidget(){
    return Container(
      height: 100,
      width: 100,
      color: Colors.red,
    );
  }

  int tinhTong()
  {
    return 1+ 2;
  }

}
